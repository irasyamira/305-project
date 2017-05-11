LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;


ENTITY tank IS

   PORT	(SIGNAL left_click, right_click, clk 			: IN std_logic;
			signal rand: in std_logic_vector(10 downto 0);
			SIGNAL mouse_col : IN std_logic_vector (9 downto 0);
			SIGNAL Red,Green,Blue 			: OUT std_logic;
			SIGNAL Horiz_sync,Vert_sync		: OUT std_logic);		
			
END tank;

architecture behavior of tank is
  
SIGNAL Red_Data, Green_Data, Blue_Data, vert_sync_int, reset	: std_logic;
SIGNAL tank_on, player_on, bullet_on, bullet_fired: std_logic;
SIGNAL Size 								: std_logic_vector(10 DOWNTO 0);  
SIGNAL bullet_size 								: std_logic_vector(10 DOWNTO 0); 
SIGNAL tank_X_motion, player_X_motion 	 : std_logic_vector(10 DOWNTO 0);
SIGNAL bullet_Y_motion						: std_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL tank_X_pos							: std_logic_vector(10 DOWNTO 0); 
SIGNAL tank_Y_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL bullet_X_pos : std_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL bullet_Y_pos	: std_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL player_Y_pos,player_X_pos 	: std_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL pixel_row, pixel_column				: std_logic_vector(10 DOWNTO 0); 

	COMPONENT vga_sync
 		PORT(clock_25Mhz, red, green, blue	: IN	STD_LOGIC;
         	red_out, green_out, blue_out	: OUT 	STD_LOGIC;
			horiz_sync_out, vert_sync_out	: OUT 	STD_LOGIC;
			pixel_row, pixel_column			: OUT STD_LOGIC_VECTOR(10 DOWNTO 0));
	END COMPONENT;

BEGIN           
   SYNC: vga_sync
 		PORT MAP(clock_25Mhz => clk, 
				red => red_data, green => green_data, blue => blue_data,	
    	     	red_out => red, green_out => green, blue_out => blue,
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);

Size <= CONV_STD_LOGIC_VECTOR(10,11);
bullet_size <= CONV_STD_LOGIC_VECTOR(4,11);
tank_Y_pos <= CONV_STD_LOGIC_VECTOR(100,11);
player_Y_pos <= CONV_STD_LOGIC_VECTOR(380,11);

		-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;

Red_Data <=  '1' and not player_on and not bullet_on;
Green_Data <= '1' and not tank_on and not bullet_on;
Blue_Data <=  '1' and not player_on and not tank_on;


RGB_Display: Process (tank_X_pos, tank_Y_pos, player_X_pos, player_Y_pos,bullet_X_pos, bullet_Y_pos, pixel_column, pixel_row, Size, bullet_size)
BEGIN
			-- Set tank_on ='1' to display tank
 IF ('0' & tank_X_pos <= pixel_column + Size) AND
 	(tank_X_pos + Size >= '0' & pixel_column) AND
 	('0' & tank_Y_pos <= pixel_row + Size) AND
 	(tank_Y_pos + Size >= '0' & pixel_row ) THEN
 		tank_on <= '1';
 	ELSE
 		tank_on <= '0';
	end if;
		
	 IF ('0' & player_X_pos <= pixel_column + Size) AND
 	(player_X_pos + Size >= '0' & pixel_column) AND
 	('0' & player_Y_pos <= pixel_row + Size) AND
 	(player_Y_pos + Size >= '0' & pixel_row ) THEN
 		player_on <= '1';
 	ELSE
 		player_on <= '0';
	END IF;
	
	IF ('0' & bullet_X_pos <= pixel_column + bullet_size) AND
 	(bullet_X_pos + bullet_size >= '0' & pixel_column) AND
 	('0' & bullet_Y_pos <= pixel_row + bullet_size) AND
 	(bullet_Y_pos + bullet_size >= '0' & pixel_row ) THEN
 		bullet_on <= '1';
 	ELSE
 		bullet_on <= '0';
	END IF;
	
END process RGB_Display;

Move_tank: process
BEGIN
	-- Move tank once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
	
			IF ('0' & tank_X_pos) >= CONV_STD_LOGIC_VECTOR(640,11) - Size THEN
				tank_X_motion <= - CONV_STD_LOGIC_VECTOR(2,11);
			ELSIF tank_X_pos <= Size THEN
				tank_X_motion <= CONV_STD_LOGIC_VECTOR(2,11);
			END IF;
			-- Compute next tank X position
				tank_X_pos <= tank_X_pos + tank_X_motion;

			-- add boundary for the player 
			IF ('0' & mouse_col) >= "0111000000" THEN
				if ('0' & player_X_pos) >= CONV_STD_LOGIC_VECTOR(640,11) - Size then
					player_X_pos <= Player_X_pos + CONV_STD_LOGIC_VECTOR(0,11);
				else
					Player_X_pos <= Player_X_pos + CONV_STD_LOGIC_VECTOR(3,11);
				end if;
			ELSIF mouse_col <= "0100000000" THEN
				if player_X_pos <= Size then
					Player_X_pos <= Player_X_pos - CONV_STD_LOGIC_VECTOR(0,11);
				else 
					Player_X_pos <= Player_X_pos - CONV_STD_LOGIC_VECTOR(3,11);
				end if;
			ELSE
				Player_X_pos <= Player_X_pos;
			END IF;
			
		if (left_click = '1') and (bullet_fired = '0') then
			bullet_fired <= '1';
			bullet_X_pos <= player_X_pos;
			bullet_Y_pos <= player_Y_pos;
			bullet_Y_motion <= - CONV_STD_LOGIC_VECTOR(4,11);
		end if;
		
		if bullet_fired = '1' then
			bullet_Y_pos <= bullet_Y_pos + bullet_Y_motion;
		end if;
		
		-- if exceeds boundary or hits the upper tank then bullet disappears
		if bullet_Y_pos >= CONV_STD_LOGIC_VECTOR(640,11) - bullet_size then
			bullet_fired <= '0';
		end if;
		
		-- collision with the tank
		if bullet_Y_pos <= tank_Y_pos + size and 
			bullet_X_pos + bullet_size <= tank_X_pos + size and
			bullet_X_pos + bullet_size <= tank_X_pos + size then
			bullet_fired <= '0';
			bullet_X_pos <= CONV_STD_LOGIC_VECTOR(500,11);
			bullet_Y_pos <= CONV_STD_LOGIC_VECTOR(700,11);
		end if;
			
END process Move_tank;

END behavior;
