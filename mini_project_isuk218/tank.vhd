LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;


ENTITY tank IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL left_click, right_click, Clock 			: IN std_logic;
        SIGNAL Red,Green,Blue 			: OUT std_logic;
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic);		
END tank;

architecture behavior of tank is
  
SIGNAL Red_Data, Green_Data, Blue_Data, vert_sync_int,
		reset, tank_on, Direction			: std_logic;
SIGNAL Size 								: std_logic_vector(9 DOWNTO 0);  
SIGNAL tank_X_motion 						: std_logic_vector(9 DOWNTO 0);
SIGNAL tank_Y_pos, tank_X_pos				: std_logic_vector(9 DOWNTO 0);
SIGNAL pixel_row, pixel_column				: std_logic_vector(9 DOWNTO 0); 

	COMPONENT vga_sync
 		PORT(clock_25Mhz, red, green, blue	: IN	STD_LOGIC;
         	red_out, green_out, blue_out	: OUT 	STD_LOGIC;
			horiz_sync_out, vert_sync_out	: OUT 	STD_LOGIC;
			pixel_row, pixel_column			: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
	END COMPONENT;

BEGIN           
   SYNC: vga_sync
 		PORT MAP(clock_25Mhz => clock, 
				red => red_data, green => green_data, blue => blue_data,	
    	     	red_out => red, green_out => green, blue_out => blue,
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);

Size <= CONV_STD_LOGIC_VECTOR(8,10);
tank_Y_pos <= CONV_STD_LOGIC_VECTOR(430,10);

		-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;

		-- Colors for pixel data on video signal
Red_Data <=  '1';
		-- Turn off Green and Blue when displaying tank
Green_Data <= NOT tank_on;
Blue_Data <=  NOT tank_on;

RGB_Display: Process (tank_X_pos, tank_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set tank_on ='1' to display tank
 IF ('0' & tank_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(tank_X_pos + Size >= '0' & pixel_column) AND
 	('0' & tank_Y_pos <= pixel_row + Size) AND
 	(tank_Y_pos + Size >= '0' & pixel_row ) THEN
 		tank_on <= '1';
 	ELSE
 		tank_on <= '0';
END IF;
END process RGB_Display;

Move_tank: process
BEGIN
			-- Move tank once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
--		if (right_click = '1') then
--			IF ('0' & tank_X_pos) >= CONV_STD_LOGIC_VECTOR(640,10) - Size THEN
--				tank_X_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
--			ELSIF tank_X_pos <= Size THEN
--				tank_X_motion <= CONV_STD_LOGIC_VECTOR(2,10);
--				--tank_X_pos <= tank_X_pos;
--			END IF;
--			-- Compute next ball X position
--				tank_X_pos <= tank_X_pos + tank_X_motion;
--		end if;
--		if (right_click = '1' and tank_X_pos <= CONV_STD_LOGIC_VECTOR(640,10) - 4) then
--			tank_X_motion <= CONV_STD_LOGIC_VECTOR(2,10);
--		
--		elsif (left_click = '1' and tank_X_pos >= CONV_STD_LOGIC_VECTOR(4,10)) then
--			tank_X_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
--		else
--			tank_X_motion <= CONV_STD_LOGIC_VECTOR(0,10);
--		end if;
--			tank_X_pos <= tank_X_pos + tank_X_motion;


--		if (right_click = '1') then
--			tank_X_motion <= CONV_STD_LOGIC_VECTOR(2,10);
--		elsif (left_click = '1') then
--			tank_X_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
--		end if
--		--Compute next ball X position
--		tank_X_pos <= tank_X_pos + tank_X_motion;
		
END process Move_tank;

END behavior;





