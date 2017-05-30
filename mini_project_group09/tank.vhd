library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;


entity tank is

   port	(signal left_click, clk: in std_logic;
			signal pause_clk: in std_logic;
			signal rand: in std_logic_vector(10 downto 0);
			signal mouse_col : in std_logic_vector (9 downto 0);
			signal pixel_row, pixel_column: in std_logic_vector(10 downto 0); 		
			signal horiz_sync_out,vert_sync_out: in std_logic;
			signal game_mode: in std_logic_vector(2 downto 0);			
			signal tank_on, player_on, bullet_on: out std_logic;
			signal o_score_ones, o_score_tens: out std_logic_vector(3 downto 0);
			signal tank2_on: out std_logic;
			signal game_over: out std_logic);
			
end tank;

architecture behavior of tank is

signal vert_sync_int	: std_logic; -- A signal copy for the input vert_sync
signal bullet_fired: std_logic; -- A signal to indicate the presence of bullet within screen
signal bullet_speed: std_logic_vector(10 downto 0);
signal size: std_logic_vector(10 downto 0);  
signal tank_x_motion, player_x_motion: std_logic_vector(10 downto 0):= conv_std_logic_vector(0,11);
signal tank_y_motion: std_logic_vector(10 downto 0) := conv_std_logic_vector(0,11);
signal tank2_x_motion: std_logic_vector(10 downto 0):= conv_std_logic_vector(0,11);
signal tank2_y_motion: std_logic_vector(10 downto 0) := conv_std_logic_vector(0,11);
signal bullet_y_motion: std_logic_vector(10 downto 0):= conv_std_logic_vector(0,11);
signal tank_x_pos: std_logic_vector(10 downto 0); 
signal tank_y_pos: std_logic_vector(10 downto 0) := conv_std_logic_vector(80,11);
signal tank2_x_pos: std_logic_vector(10 downto 0); 
signal tank2_y_pos: std_logic_vector(10 downto 0) := conv_std_logic_vector(120,11);
signal bullet_x_pos: std_logic_vector(10 downto 0);
signal bullet_y_pos: std_logic_vector(10 downto 0);
signal player_y_pos, player_x_pos: std_logic_vector(10 downto 0);
signal s_rand: std_logic_vector(10 downto 0);
signal score_ones: std_logic_vector(3 downto 0) := "0000";
signal score_tens: std_logic_vector(3 downto 0) := "0000";
signal s_game_over: std_logic:= '0'; -- A signal to indicate the end of a game while it is still running

begin           

size <= conv_std_logic_vector(15,11); -- Initialises the size of the tanks and player
bullet_speed <= conv_std_logic_vector(6,11); -- Initialises the speed of the bullet
player_y_pos <= conv_std_logic_vector(380,11); -- Fixes the Y position of the player
vert_sync_int <= vert_sync_out; -- A copy of the input signal vert_sync
s_rand <= rand; -- A copy of the input signal rand from the lfsr

-- This process outputs '1' if the current pixel corresponds to any of the objects that needs to be rendered on the screen
rgb_display: process (tank_x_pos, tank_y_pos, player_x_pos, player_y_pos,bullet_x_pos, bullet_y_pos, pixel_column, pixel_row, size, tank2_x_pos, tank2_y_pos)
begin

	-- Checks if current pixel row and pixel column are within the boundaries of tank1
	-- Outputs 1 if curent pixel is within boundaries
	if ('0' & tank_x_pos <= pixel_column + size) and
 	(tank_x_pos + size >= '0' & pixel_column) and
 	('0' & tank_y_pos <= pixel_row + size) and
 	(tank_y_pos + size >= '0' & pixel_row ) then
 		tank_on <= '1';
 	else
 		tank_on <= '0';
	end if;
	-- Checks if current pixel row and pixel column are within the boundaries of tank2
	-- Outputs 1 if curent pixel is within boundaries	
	if ('0' & tank2_x_pos <= pixel_column + size) and
 	(tank2_x_pos + size >= '0' & pixel_column) and
 	('0' & tank2_y_pos <= pixel_row + size) and
 	(tank2_y_pos + size >= '0' & pixel_row ) then
 		tank2_on <= '1';
 	else
 		tank2_on <= '0';
	end if;
	-- Checks if current pixel row and pixel column are within the boundaries of tank3
	-- Outputs 1 if curent pixel is within boundaries		
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

-- This process controls the movement of the tanks, player and bullet for every vertical sync 
move_tank: process
begin
	s_game_over <= '0';

	wait until vert_sync_int'event and vert_sync_int = '1';
	
		-- Resets scores whenever Menu screen is selected	
		if game_mode = "0000" then
				score_ones <= "0000";
				score_tens <= "0000";
				
		-- Practice mode and Level 1 mode
		-- The tank only moves horizontally at a fixed speed of 2pixels per vertical sync		
		elsif game_mode = "001" or game_mode = "010" then			
			tank_y_pos <= conv_std_logic_vector(80,11);		
			-- If pause button is held down, the objects on the screen retains its current position
			-- until the pause button is being released			
			if (pause_clk = '0' and game_mode /= "000") then
				tank_x_pos <= tank_x_pos;
				tank_y_pos <= tank_y_pos;
				bullet_x_pos <= bullet_x_pos;
				bullet_y_pos <= bullet_y_pos;
				player_x_pos <= player_x_pos;
				player_y_pos <= player_y_pos;	
			else	
				-- Tank moves in horizontal motion, bounces off the sides of the boundaries
				if ('0' & tank_x_pos) >= conv_std_logic_vector(640,11) - size then
					tank_x_motion <= - conv_std_logic_vector(2,11);
				elsif tank_x_pos <= size then
					tank_x_motion <= conv_std_logic_vector(2,11);
				end if;
					-- Computes the next x position of tank
					tank_x_pos <= tank_x_pos + tank_x_motion;
						
				-- Controls  movement of player and boundary is set for the player using mouse column value
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
				
				-- Controls the movement of the bullet when left click of mouse is triggered and the bullet is 
				-- clear to be fired again after the previous shot (if any) 
				-- Only one bullet is allowed to be fired within the screen				
				if (left_click = '1') and (bullet_fired = '0') then
					bullet_fired <= '1';
					bullet_x_pos <= player_x_pos;
					bullet_y_pos <= player_y_pos;
					bullet_y_motion <= - bullet_speed;
				end if;
				
				-- While bullet is still on the screen, its Y position decreases until it hits a tank, or exceeds the boundary of the screen				
				if bullet_fired = '1' then
					bullet_y_pos <= bullet_y_pos + bullet_y_motion;
				end if;
				
				-- If bullet exceeds boundary then bullet fired flag is cleared, allowing the next bullet to be fired
				if bullet_y_pos < 1 then
					bullet_fired <= '0';
				end if;
				
				-- Checks if the bullet collides with the tank				
				if ('0' & bullet_y_pos <= tank_y_pos + size) and 
					(('0' & bullet_y_pos) >= tank_y_pos - size) and
					('0' & bullet_x_pos  <= tank_x_pos + size) and
					('0' & bullet_x_pos >= tank_x_pos - size) then
					
					bullet_fired <= '0'; -- Flag is cleared, allowing next bullet to be fired
					score_ones <= score_ones + '1'; -- Score increased

					-- When score ones overflow, score tens is being incremented					
						if (score_ones = "1001") then
							score_tens <= score_tens + '1';
							score_ones <= "0000";
						end if;
						
					-- Bullet reappears off screen until left click is triggered again
					bullet_x_pos <= conv_std_logic_vector(500,11);
					bullet_y_pos <= conv_std_logic_vector(700,11);
						
						-- Tank spawns at a random x position based on rand input but within limit (between 50 and 589)
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
			end if;	-- pause
	
		-- Level 2 mode
		-- Two tanks move horizontally at different Y positions at a fixed speed of 4pixels per vertical sync		
		elsif game_mode = "011" then

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
	
				-- Controls horizontal movement for tank1
				if ('0' & tank_x_pos) >= conv_std_logic_vector(640,11) - size then
					tank_x_motion <= - conv_std_logic_vector(4,11);
				elsif tank_x_pos <= size then
					tank_x_motion <= conv_std_logic_vector(4,11);
				end if;

				tank_x_pos <= tank_x_pos + tank_x_motion;
					
				-- Controls horizontal movement for tank2
				if ('0' & tank2_x_pos) >= conv_std_logic_vector(640,11) - size then
					tank2_x_motion <= - conv_std_logic_vector(4,11);
				elsif tank2_x_pos <= size then
					tank2_x_motion <= conv_std_logic_vector(4,11);
				end if;

				tank2_x_pos <= tank2_x_pos + tank2_x_motion;
						
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
				
				if bullet_y_pos < 1 then
					bullet_fired <= '0';
				end if;
				
				-- Handles collision with tank1
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

					bullet_x_pos <= conv_std_logic_vector(500,11);
					bullet_y_pos <= conv_std_logic_vector(700,11);
						
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
				
				-- Handles collision with tank2
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

					bullet_x_pos <= conv_std_logic_vector(500,11);
					bullet_y_pos <= conv_std_logic_vector(700,11);
						
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
				
			end if;
			
		-- Level 3 mode
		-- The tank moves in zigzag motion at a fixed speed of 5pixels per vertical sync		
		elsif game_mode = "100" then
			
			if (pause_clk = '0' and game_mode /= "000") then
				tank_x_pos <= tank_x_pos;
				tank_y_pos <= tank_y_pos;
				bullet_x_pos <= bullet_x_pos;
				bullet_y_pos <= bullet_y_pos;
				player_x_pos <= player_x_pos;
				player_y_pos <= player_y_pos;
	
			else
				-- Controls the zigzag movement for tank by increasing its Y position when it hits the horizontal boundaries
					if ('0' & tank_x_pos) >= conv_std_logic_vector(640,11) - size then
							tank_x_motion <= - conv_std_logic_vector(5,11);
							tank_y_pos <= tank_y_pos + conv_std_logic_vector(10,11);							
					elsif tank_x_pos <= size then
							tank_x_motion <= conv_std_logic_vector(5,11);
							tank_y_pos <= tank_y_pos + conv_std_logic_vector(10,11);
					end if;
		
					tank_x_pos <= tank_x_pos + tank_x_motion;
					
					if ('0' & tank_y_pos >= conv_std_logic_vector(480,11) - size) then
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

						bullet_x_pos <= conv_std_logic_vector(500,11);
						bullet_y_pos <= conv_std_logic_vector(700,11);
							
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
		-- Level 4 mode
		-- Two tanks move in zigzag motion at a fixed speed of 6pixels per vertical sync				
		elsif game_mode = "101" then
		
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
	
				-- Controls zigzag movement for tank1
					if ('0' & tank_x_pos) >= conv_std_logic_vector(640,11) - size then
							tank_x_motion <= - conv_std_logic_vector(6,11);
							tank_y_pos <= tank_y_pos + conv_std_logic_vector(10,11);							
							
					elsif tank_x_pos <= size then
							tank_x_motion <= conv_std_logic_vector(6,11);
							tank_y_pos <= tank_y_pos + conv_std_logic_vector(10,11);
								
					end if;

					tank_x_pos <= tank_x_pos + tank_x_motion;
					
					if ('0' & tank_y_pos >= conv_std_logic_vector(480,11) - size) then

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
					
				-- Controls zigzag movement for tank2
					if ('0' & tank2_x_pos) >= conv_std_logic_vector(640,11) - size then
							tank2_x_motion <= - conv_std_logic_vector(6,11);
							tank2_y_pos <= tank2_y_pos + conv_std_logic_vector(10,11);							
							
					elsif tank2_x_pos <= size then
							tank2_x_motion <= conv_std_logic_vector(6,11);
							tank2_y_pos <= tank2_y_pos + conv_std_logic_vector(10,11);
								
					end if;

					tank2_x_pos <= tank2_x_pos + tank2_x_motion;
					
					if ('0' & tank2_y_pos >= conv_std_logic_vector(480,11) - size) then 

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
					
					if bullet_y_pos < 1 then
						bullet_fired <= '0';
					end if;
					
					-- Handles the collision with tank1
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

						bullet_x_pos <= conv_std_logic_vector(500,11);
						bullet_y_pos <= conv_std_logic_vector(700,11);
							
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
					
					-- Handles the collision with tank2
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
	-- Assign signals to their respective outputs
	game_over <= s_game_over;
	o_score_ones <= score_ones;
	o_score_tens <= score_tens;
end process move_tank;
end behavior;
