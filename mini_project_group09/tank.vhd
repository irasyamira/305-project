library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;


entity tank is

   port	(signal left_click, clk 			: in std_logic;
			signal pause_clk: in std_logic;
			signal rand: in std_logic_vector(10 downto 0);
			signal mouse_col : in std_logic_vector (9 downto 0);
			signal pixel_row, pixel_column				: in std_logic_vector(10 downto 0); 
			signal horiz_sync_out,vert_sync_out		: in std_logic;
			signal tank_on, player_on, bullet_on: out std_logic;
			signal game_mode: in std_logic_vector(2 downto 0);
			signal o_score_ones, o_score_tens: out std_logic_vector(3 downto 0);
			signal reset: in std_logic;
			signal tank2_on: out std_logic;
			signal collision: out std_logic;
			signal game_over: out std_logic);
			
end tank;

architecture behavior of tank is
  
signal red_data, green_data, blue_data	: std_logic;
signal vert_sync_int	: std_logic;
signal bullet_fired: std_logic;
signal bullet_speed: std_logic_vector(10 downto 0);
signal size 								: std_logic_vector(10 downto 0);  
signal bullet_size 								: std_logic_vector(10 downto 0); 
signal tank_x_motion, player_x_motion 	 : std_logic_vector(10 downto 0):= conv_std_logic_vector(0,11);
signal tank_y_motion: std_logic_vector(10 downto 0) := conv_std_logic_vector(0,11);
signal tank2_x_motion 	 : std_logic_vector(10 downto 0):= conv_std_logic_vector(0,11);
signal tank2_y_motion: std_logic_vector(10 downto 0) := conv_std_logic_vector(0,11);
signal bullet_y_motion						: std_logic_vector(10 downto 0):= conv_std_logic_vector(0,11);
signal tank_x_pos							: std_logic_vector(10 downto 0); 
signal tank_y_pos				: std_logic_vector(10 downto 0) := conv_std_logic_vector(80,11);
signal tank2_x_pos							: std_logic_vector(10 downto 0); 
signal tank2_y_pos				: std_logic_vector(10 downto 0) := conv_std_logic_vector(120,11);
signal bullet_x_pos : std_logic_vector(10 downto 0);
signal bullet_y_pos	: std_logic_vector(10 downto 0);
signal player_y_pos,player_x_pos 	: std_logic_vector(10 downto 0);
signal s_rand: std_logic_vector(10 downto 0);
signal score_ones: std_logic_vector(3 downto 0) := "0000";
signal score_tens: std_logic_vector(3 downto 0) := "0000";
signal s_collision: std_logic:= '0';
signal s_game_over: std_logic:= '0';

begin           

size <= conv_std_logic_vector(15,11);
bullet_size <= conv_std_logic_vector(4,11);
bullet_speed <= conv_std_logic_vector(6,11);
player_y_pos <= conv_std_logic_vector(380,11);
vert_sync_int <= vert_sync_out; -- need internal copy of vert_sync to read
s_rand <= rand;

rgb_display: process (tank_x_pos, tank_y_pos, player_x_pos, player_y_pos,bullet_x_pos, bullet_y_pos, pixel_column, pixel_row, size, bullet_size, tank2_x_pos, tank2_y_pos)
begin

	if ('0' & tank_x_pos <= pixel_column + size) and
 	(tank_x_pos + size >= '0' & pixel_column) and
 	('0' & tank_y_pos <= pixel_row + size) and
 	(tank_y_pos + size >= '0' & pixel_row ) then
 		tank_on <= '1';
 	else
 		tank_on <= '0';
	end if;
	
	if ('0' & tank2_x_pos <= pixel_column + size) and
 	(tank2_x_pos + size >= '0' & pixel_column) and
 	('0' & tank2_y_pos <= pixel_row + size) and
 	(tank2_y_pos + size >= '0' & pixel_row ) then
 		tank2_on <= '1';
 	else
 		tank2_on <= '0';
	end if;
	
	 if ('0' & player_x_pos <= pixel_column + size) and
 	(player_x_pos + size >= '0' & pixel_column) and
 	('0' & player_y_pos <= pixel_row + size) and
 	(player_y_pos + size >= '0' & pixel_row ) then
 		player_on <= '1';
 	else
 		player_on <= '0';
	end if;
	
	-- Checks if current pixel row and pixel column are within the boundaries of bullet
	-- Outputs 1 if curent pixel is within boundaries
	if  ((pixel_row - bullet_y_pos) * (pixel_row - bullet_y_pos)) + ((pixel_column - bullet_x_pos) * (pixel_column - bullet_x_pos)) <= 36 then
		bullet_on <= '1';
 	else
 		bullet_on <= '0';
	end if;
	
end process rgb_display;

move_tank: process
begin
	s_game_over <= '0';
	-- move tank once every vertical sync	
	wait until vert_sync_int'event and vert_sync_int = '1';
		if game_mode = "0000" then
				score_ones <= "0000";
				score_tens <= "0000";
		
		elsif game_mode = "001" or game_mode = "010" then
			-- PRACTICE MODE	OR GAME MODE
			-- LEVEL 0 or LEVEL 1
			-- Describe levels here
			
			tank_y_pos <= conv_std_logic_vector(80,11);
			
			if (pause_clk = '0' and game_mode /= "000") then
				tank_x_pos <= tank_x_pos;
				tank_y_pos <= tank_y_pos;
				bullet_x_pos <= bullet_x_pos;
				bullet_y_pos <= bullet_y_pos;
				player_x_pos <= player_x_pos;
				player_y_pos <= player_y_pos;
	
			else
	
				-- tank moving in horizontal motion
				if ('0' & tank_x_pos) >= conv_std_logic_vector(640,11) - size then
					tank_x_motion <= - conv_std_logic_vector(2,11);
				elsif tank_x_pos <= size then
					tank_x_motion <= conv_std_logic_vector(2,11);
				end if;
				-- compute next tank x position
					tank_x_pos <= tank_x_pos + tank_x_motion;
						
				-- add boundary for the player 
				if ('0' & mouse_col) >= "0111000000" then
					if ('0' & player_x_pos) >= conv_std_logic_vector(640,11) - size then
						player_x_pos <= player_x_pos + conv_std_logic_vector(0,11);
					else
						player_x_pos <= player_x_pos + conv_std_logic_vector(3,11);
					end if;
				elsif mouse_col <= "0100000000" then
					if player_x_pos <= size then
						player_x_pos <= player_x_pos - conv_std_logic_vector(0,11);
					else 
						player_x_pos <= player_x_pos - conv_std_logic_vector(3,11);
					end if;
				else
					player_x_pos <= player_x_pos;
				end if;
				
				if (left_click = '1') and (bullet_fired = '0') then
					bullet_fired <= '1';
					bullet_x_pos <= player_x_pos;
					bullet_y_pos <= player_y_pos;
					bullet_y_motion <= - bullet_speed;
				end if;
				
				if bullet_fired = '1' then
					bullet_y_pos <= bullet_y_pos + bullet_y_motion;
				end if;
				
				-- if exceeds boundary or hits the upper tank then bullet disappears
				if bullet_y_pos < 1 then
					bullet_fired <= '0';
				end if;
				
				
				if ('0' & bullet_y_pos <= tank_y_pos + size) and 
					(('0' & bullet_y_pos) >= tank_y_pos - size) and
					('0' & bullet_x_pos  <= tank_x_pos + size) and
					('0' & bullet_x_pos >= tank_x_pos - size) then
					
					bullet_fired <= '0';
					score_ones <= score_ones + '1';

						if (score_ones = "1001") then
							score_tens <= score_tens + '1';
							score_ones <= "0000";
						end if;
					-- bullet reappears off screen until left click is triggered again
					bullet_x_pos <= conv_std_logic_vector(500,11);
					bullet_y_pos <= conv_std_logic_vector(700,11);
						
						-- re spawn tank at a random x position based on rand input
						-- spawn region is between 50 and 589
							if (s_rand >= conv_std_logic_vector(589,11) - size) then
								tank_x_pos <= conv_std_logic_vector(589,11) - size;
								tank_y_pos <= conv_std_logic_vector(80,11);
							elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
								tank_x_pos <= conv_std_logic_vector(50,11) + size;
								tank_y_pos <= conv_std_logic_vector(80,11);
							else
								tank_x_pos <= s_rand;
								tank_y_pos <= conv_std_logic_vector(80,11);
							end if;	
							--s_collision <= '0';
				end if;
			end if;	-- pause
	
		
		elsif game_mode = "011" then
			-- GAME MODE
			-- LEVEL 2
			tank_y_pos <= conv_std_logic_vector(80,11);
			tank2_y_pos <= conv_std_logic_vector(120,11);
	
			if (pause_clk = '0' and game_mode /= "000") then
				tank_x_pos <= tank_x_pos;
				tank_y_pos <= tank_y_pos;
				tank2_x_pos <= tank2_x_pos;
				tank2_y_pos <= tank2_y_pos;				
				bullet_x_pos <= bullet_x_pos;
				bullet_y_pos <= bullet_y_pos;
				player_x_pos <= player_x_pos;
				player_y_pos <= player_y_pos;
	
			else
	
				-- tank moving in horizontal motion
				if ('0' & tank_x_pos) >= conv_std_logic_vector(640,11) - size then
					tank_x_motion <= - conv_std_logic_vector(4,11); -- SPEED  FOR LEVEL 2
				elsif tank_x_pos <= size then
					tank_x_motion <= conv_std_logic_vector(4,11); -- SPEED  FOR LEVEL 2
				end if;
				-- compute next tank x position
					tank_x_pos <= tank_x_pos + tank_x_motion;
					
				-- tank moving in horizontal motion
				if ('0' & tank2_x_pos) >= conv_std_logic_vector(640,11) - size then
					tank2_x_motion <= - conv_std_logic_vector(4,11); -- SPEED  FOR LEVEL 2
				elsif tank2_x_pos <= size then
					tank2_x_motion <= conv_std_logic_vector(4,11); -- SPEED  FOR LEVEL 2
				end if;
				-- compute next tank x position
					tank2_x_pos <= tank2_x_pos + tank2_x_motion;
						
				-- add boundary for the player 
				if ('0' & mouse_col) >= "0111000000" then
					if ('0' & player_x_pos) >= conv_std_logic_vector(640,11) - size then
						player_x_pos <= player_x_pos + conv_std_logic_vector(0,11);
					else
						player_x_pos <= player_x_pos + conv_std_logic_vector(3,11);
					end if;
				elsif mouse_col <= "0100000000" then
					if player_x_pos <= size then
						player_x_pos <= player_x_pos - conv_std_logic_vector(0,11);
					else 
						player_x_pos <= player_x_pos - conv_std_logic_vector(3,11);
					end if;
				else
					player_x_pos <= player_x_pos;
				end if;
				
				if (left_click = '1') and (bullet_fired = '0') then
					bullet_fired <= '1';
					bullet_x_pos <= player_x_pos;
					bullet_y_pos <= player_y_pos;
					bullet_y_motion <= - bullet_speed;
				end if;
				
				if bullet_fired = '1' then
					bullet_y_pos <= bullet_y_pos + bullet_y_motion;
				end if;
				
				-- if exceeds boundary or hits the upper tank then bullet disappears
				if bullet_y_pos < 1 then
					bullet_fired <= '0';
				end if;
				
				-- COLLISION WITH TANK 1
				if ('0' & bullet_y_pos <= tank_y_pos + size) and 
					(('0' & bullet_y_pos) >= tank_y_pos - size) and
					('0' & bullet_x_pos  <= tank_x_pos + size) and
					('0' & bullet_x_pos >= tank_x_pos - size) then
					
					bullet_fired <= '0';
					score_ones <= score_ones + "0001";
						if (score_ones = "1001") then
							score_tens <= score_tens + '1';
							score_ones <= "0000";
						end if;
					-- bullet reappears off screen until left click is triggered again
					bullet_x_pos <= conv_std_logic_vector(500,11);
					bullet_y_pos <= conv_std_logic_vector(700,11);
						
						-- re spawn tank at a random x position based on rand input
						-- spawn region is between 50 and 589
							if (s_rand >= conv_std_logic_vector(589,11) - size) then
								tank_x_pos <= conv_std_logic_vector(589,11) - size;
								tank_y_pos <= conv_std_logic_vector(80,11);
							elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
								tank_x_pos <= conv_std_logic_vector(50,11) + size;
								tank_y_pos <= conv_std_logic_vector(80,11);
							else
								tank_x_pos <= s_rand;
								tank_y_pos <= conv_std_logic_vector(80,11);
							end if;	
				end if;
				
				-- COLLISION WITH TANK 2 
				if ('0' & bullet_y_pos <= tank2_y_pos + size) and 
					(('0' & bullet_y_pos) >= tank2_y_pos - size) and
					('0' & bullet_x_pos  <= tank2_x_pos + size) and
					('0' & bullet_x_pos >= tank2_x_pos - size) then
					
					bullet_fired <= '0';
					score_ones <= score_ones + "0001";
						if (score_ones = "1001") then
							score_tens <= score_tens + '1';
							score_ones <= "0000";
						end if;
					-- bullet reappears off screen until left click is triggered again
					bullet_x_pos <= conv_std_logic_vector(500,11);
					bullet_y_pos <= conv_std_logic_vector(700,11);
						
						-- re spawn tank at a random x position based on rand input
						-- spawn region is between 50 and 589
							if (s_rand >= conv_std_logic_vector(589,11) - size) then
								tank2_x_pos <= conv_std_logic_vector(589,11) - size;
								tank2_y_pos <= conv_std_logic_vector(120,11);
							elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
								tank2_x_pos <= conv_std_logic_vector(50,11) + size;
								tank2_y_pos <= conv_std_logic_vector(120,11);
							else
								tank2_x_pos <= s_rand;
								tank2_y_pos <= conv_std_logic_vector(120,11);
							end if;	
				end if;
				
			end if;	-- pause
	
		elsif game_mode = "100" then
		-- GAME MODE 
		-- LEVEL 3
			
			if (pause_clk = '0' and game_mode /= "000") then
				tank_x_pos <= tank_x_pos;
				tank_y_pos <= tank_y_pos;
				bullet_x_pos <= bullet_x_pos;
				bullet_y_pos <= bullet_y_pos;
				player_x_pos <= player_x_pos;
				player_y_pos <= player_y_pos;
	
			else
				-- tank moving in zig zag motion
					if ('0' & tank_x_pos) >= conv_std_logic_vector(640,11) - size then
							tank_x_motion <= - conv_std_logic_vector(5,11); -- SPEED  FOR LEVEL 3
							tank_y_pos <= tank_y_pos + conv_std_logic_vector(10,11);							
							
					elsif tank_x_pos <= size then
							tank_x_motion <= conv_std_logic_vector(5,11); -- SPEED  FOR LEVEL 3
							tank_y_pos <= tank_y_pos + conv_std_logic_vector(10,11);
								
					end if;
					-- compute next tank x position
					tank_x_pos <= tank_x_pos + tank_x_motion;
					
					if ('0' & tank_y_pos >= conv_std_logic_vector(480,11) - size) then -- exceeds the lower vertical boundary
--					-- re spawn tank at a random x position based on rand input
--					-- spawn region is between 50 and 589
						tank_y_pos <= conv_std_logic_vector(80,11);
						if (s_rand >= conv_std_logic_vector(589,11) - size) then
							tank_x_pos <= conv_std_logic_vector(589,11) - size;
						elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
							tank_x_pos <= conv_std_logic_vector(50,11) + size;
						else
							tank_x_pos <= s_rand;
						end if;	
						s_game_over <= '1';
					end if;
					
					
	
						
					-- add boundary for the player 
					if ('0' & mouse_col) >= "0111000000" then
						if ('0' & player_x_pos) >= conv_std_logic_vector(640,11) - size then
							player_x_pos <= player_x_pos + conv_std_logic_vector(0,11);
						else
							player_x_pos <= player_x_pos + conv_std_logic_vector(3,11);
						end if;
					elsif mouse_col <= "0100000000" then
						if player_x_pos <= size then
							player_x_pos <= player_x_pos - conv_std_logic_vector(0,11);
						else 
							player_x_pos <= player_x_pos - conv_std_logic_vector(3,11);
						end if;
					else
						player_x_pos <= player_x_pos;
					end if;
					
					if (left_click = '1') and (bullet_fired = '0') then
						bullet_fired <= '1';
						bullet_x_pos <= player_x_pos;
						bullet_y_pos <= player_y_pos;
						bullet_y_motion <= - bullet_speed;
					end if;
					
					if bullet_fired = '1' then
						bullet_y_pos <= bullet_y_pos + bullet_y_motion;
					end if;
					
					-- if exceeds boundary or hits the upper tank then bullet disappears
					if bullet_y_pos < 1 then
						bullet_fired <= '0';
					end if;
					
					
					if ('0' & bullet_y_pos <= tank_y_pos + size) and 
						(('0' & bullet_y_pos) >= tank_y_pos - size) and
						('0' & bullet_x_pos  <= tank_x_pos + size) and
						('0' & bullet_x_pos >= tank_x_pos - size) then
						
						bullet_fired <= '0';
						score_ones <= score_ones + '1';
							if (score_ones = "1001") then
								score_tens <= score_tens + '1';
								score_ones <= "0000";
							end if;
						-- bullet reappears off screen until left click is triggered again
						bullet_x_pos <= conv_std_logic_vector(500,11);
						bullet_y_pos <= conv_std_logic_vector(700,11);
							
							-- re spawn tank at a random x position based on rand input
							-- spawn region is between 50 and 589
							if (s_rand >= conv_std_logic_vector(589,11) - size) then
								tank_x_pos <= conv_std_logic_vector(589,11) - size;
								tank_y_pos <= conv_std_logic_vector(80,11);
							elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
								tank_x_pos <= conv_std_logic_vector(50,11) + size;
								tank_y_pos <= conv_std_logic_vector(80,11);
							else
								tank_x_pos <= s_rand;
								tank_y_pos <= conv_std_logic_vector(80,11);
							end if;	
					end if;
			end if;	
			
elsif game_mode = "101" then
		-- GAME MODE
		-- LEVEL 4
		
			if (pause_clk = '0' and game_mode /= "000") then
				tank_x_pos <= tank_x_pos;
				tank_y_pos <= tank_y_pos;
				tank2_x_pos <= tank2_x_pos;
				tank2_y_pos <= tank2_y_pos;
				bullet_x_pos <= bullet_x_pos;
				bullet_y_pos <= bullet_y_pos;
				player_x_pos <= player_x_pos;
				player_y_pos <= player_y_pos;
	
			else
	
					-- tank 1 moving in zig zag motion
					if ('0' & tank_x_pos) >= conv_std_logic_vector(640,11) - size then
							tank_x_motion <= - conv_std_logic_vector(6,11); -- SPEED  FOR LEVEL 4
							tank_y_pos <= tank_y_pos + conv_std_logic_vector(10,11);							
							
					elsif tank_x_pos <= size then
							tank_x_motion <= conv_std_logic_vector(6,11); -- SPEED  FOR LEVEL 4
							tank_y_pos <= tank_y_pos + conv_std_logic_vector(10,11);
								
					end if;
					-- compute next tank x position
					tank_x_pos <= tank_x_pos + tank_x_motion;
					
					if ('0' & tank_y_pos >= conv_std_logic_vector(480,11) - size) then -- exceeds the lower vertical boundary

					-- re spawn tank at a random x position based on rand input
					-- spawn region is between 50 and 589
						tank_y_pos <= conv_std_logic_vector(80,11);
						if (s_rand >= conv_std_logic_vector(589,11) - size) then
							tank_x_pos <= conv_std_logic_vector(589,11) - size;
						elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
							tank_x_pos <= conv_std_logic_vector(50,11) + size;
						else
							tank_x_pos <= s_rand;
						end if;	
						s_game_over <= '1';
					end if;
					
					-- tank 2 moving in zig zag motion
					if ('0' & tank2_x_pos) >= conv_std_logic_vector(640,11) - size then
							tank2_x_motion <= - conv_std_logic_vector(6,11); -- SPEED  FOR LEVEL 4
							tank2_y_pos <= tank2_y_pos + conv_std_logic_vector(10,11);							
							
					elsif tank2_x_pos <= size then
							tank2_x_motion <= conv_std_logic_vector(6,11); -- SPEED  FOR LEVEL 4
							tank2_y_pos <= tank2_y_pos + conv_std_logic_vector(10,11);
								
					end if;
					-- compute next tank 2 x position
					tank2_x_pos <= tank2_x_pos + tank2_x_motion;
					
					-- DUPLICATE FOR TANK 1
--					if ('0' & tank_y_pos >= conv_std_logic_vector(480,11) - size) then -- exceeds the lower vertical boundary
--						game_over <= '1';					
----					-- re spawn tank at a random x position based on rand input
----					-- spawn region is between 50 and 589
----						tank_y_pos <= conv_std_logic_vector(80,11);
----						if (s_rand >= conv_std_logic_vector(589,11) - size) then
----							tank_x_pos <= conv_std_logic_vector(589,11) - size;
----						elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
----							tank_x_pos <= conv_std_logic_vector(50,11) + size;
----						else
----							tank_x_pos <= s_rand;
----						end if;	
--					end if;
					
					if ('0' & tank2_y_pos >= conv_std_logic_vector(480,11) - size) then -- exceeds the lower vertical boundary

--					-- re spawn tank 2 at a random x position based on rand input
--					-- spawn region is between 50 and 589
						tank2_y_pos <= conv_std_logic_vector(80,11);
						if (s_rand >= conv_std_logic_vector(589,11) - size) then
							tank2_x_pos <= conv_std_logic_vector(589,11) - size;
						elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
							tank2_x_pos <= conv_std_logic_vector(50,11) + size;
						else
							tank2_x_pos <= s_rand;
						end if;	
						s_game_over <= '1';
					end if;
									
					-- add boundary for the player 
					if ('0' & mouse_col) >= "0111000000" then
						if ('0' & player_x_pos) >= conv_std_logic_vector(640,11) - size then
							player_x_pos <= player_x_pos + conv_std_logic_vector(0,11);
						else
							player_x_pos <= player_x_pos + conv_std_logic_vector(3,11);
						end if;
					elsif mouse_col <= "0100000000" then
						if player_x_pos <= size then
							player_x_pos <= player_x_pos - conv_std_logic_vector(0,11);
						else 
							player_x_pos <= player_x_pos - conv_std_logic_vector(3,11);
						end if;
					else
						player_x_pos <= player_x_pos;
					end if;
					
					if (left_click = '1') and (bullet_fired = '0') then
						bullet_fired <= '1';
						bullet_x_pos <= player_x_pos;
						bullet_y_pos <= player_y_pos;
						bullet_y_motion <= - bullet_speed;
					end if;
					
					if bullet_fired = '1' then
						bullet_y_pos <= bullet_y_pos + bullet_y_motion;
					end if;
					
					-- if exceeds boundary or hits the upper tank then bullet disappears
					if bullet_y_pos < 1 then
						bullet_fired <= '0';
					end if;
					
					-- collision with tank 1
					if ('0' & bullet_y_pos <= tank_y_pos + size) and 
						(('0' & bullet_y_pos) >= tank_y_pos - size) and
						('0' & bullet_x_pos  <= tank_x_pos + size) and
						('0' & bullet_x_pos >= tank_x_pos - size) then
						
						bullet_fired <= '0';
						score_ones <= score_ones + '1';
							if (score_ones = "1001") then
								score_tens <= score_tens + '1';
								score_ones <= "0000";
							end if;
						-- bullet reappears off screen until left click is triggered again
						bullet_x_pos <= conv_std_logic_vector(500,11);
						bullet_y_pos <= conv_std_logic_vector(700,11);
							
							-- re spawn tank at a random x position based on rand input
							-- spawn region is between 50 and 589
								if (s_rand >= conv_std_logic_vector(589,11) - size) then
									tank_x_pos <= conv_std_logic_vector(589,11) - size;
									tank_y_pos <= conv_std_logic_vector(80,11);
								elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
									tank_x_pos <= conv_std_logic_vector(50,11) + size;
									tank_y_pos <= conv_std_logic_vector(80,11);
								else
									tank_x_pos <= s_rand;
									tank_y_pos <= conv_std_logic_vector(80,11);
								end if;	
					end if;	
					
					-- collision with tank 2
					if ('0' & bullet_y_pos <= tank2_y_pos + size) and 
						(('0' & bullet_y_pos) >= tank2_y_pos - size) and
						('0' & bullet_x_pos  <= tank2_x_pos + size) and
						('0' & bullet_x_pos >= tank2_x_pos - size) then
						
						bullet_fired <= '0';
						score_ones <= score_ones + '1';
							if (score_ones = "1001") then
								score_tens <= score_tens + '1';
								score_ones <= "0000";
							end if;
						-- bullet reappears off screen until left click is triggered again
						bullet_x_pos <= conv_std_logic_vector(500,11);
						bullet_y_pos <= conv_std_logic_vector(700,11);
							
							-- re spawn tank at a random x position based on rand input
							-- spawn region is between 50 and 589
								if (s_rand >= conv_std_logic_vector(589,11) - size) then
									tank2_x_pos <= conv_std_logic_vector(589,11) - size;
									tank2_y_pos <= conv_std_logic_vector(80,11);
								elsif (s_rand <= conv_std_logic_vector(50,11) + size) then
									tank2_x_pos <= conv_std_logic_vector(50,11) + size;
									tank2_y_pos <= conv_std_logic_vector(80,11);
								else
									tank2_x_pos <= s_rand;
									tank2_y_pos <= conv_std_logic_vector(80,11);
								end if;	
					end if;	
					
					
			end if;
			
		end if;
	game_over <= s_game_over;
	o_score_ones <= score_ones;
	o_score_tens <= score_tens;
end process move_tank;
--collision <= s_collision;
end behavior;
