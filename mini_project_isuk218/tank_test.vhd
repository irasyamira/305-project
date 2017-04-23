LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;

ENTITY tank_test IS
   PORT(signal  left_button, right_button, clk, button 			: IN std_logic;
        signal Red,Green,Blue,help 			: OUT std_logic;
        signal Horiz_sync,Vert_sync		: OUT std_logic;
		  score : out integer range 1 to 1001); 
END tank_test;

architecture behavior of tank_test is

signal red_data, green_data, blue_data, vert_sync_int, reset, pipe_on, tank_on : std_logic;
signal pipe_thick, pipe_gap_size, tank_size : std_logic_vector(9 downto 0);
signal pipe_x_motion, pipe_x_pos, tank_Y_motion  : std_logic_vector(9 downto 0);
signal pipe_gap_y, tank_Y_pos, tank_X_pos : std_logic_vector(9 downto 0);
signal pixel_row, pixel_column : std_logic_vector(9 DOWNTO 0); 

	component vga_sync is
 		PORT	(clock_25Mhz, red, green, blue	: IN	STD_LOGIC;
         	red_out, green_out, blue_out		: OUT 	STD_LOGIC;
				horiz_sync_out, vert_sync_out		: OUT 	STD_LOGIC;
				pixel_row, pixel_column				: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
	END component vga_sync;

begin           
   SYNC: vga_sync
 		PORT MAP(clock_25Mhz => clk, 
				red => red_data, green => green_data, blue => blue_data,	 -- in
    	     	red_out => red, green_out => green, blue_out => blue,		-- out
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);
				
tank_size <= CONV_STD_LOGIC_VECTOR(8,10);
tank_X_pos <= CONV_STD_LOGIC_VECTOR(320,10);				
pipe_thick <= CONV_STD_LOGIC_VECTOR(40,10);
pipe_gap_size <= CONV_STD_LOGIC_VECTOR(60,10);
pipe_gap_y <= CONV_STD_LOGIC_VECTOR(70,10);

-- need internal copy of vert_sync to read
vert_sync  <= vert_sync_int;

-- Colors for pixel data on video signal
Red_Data <=  not tank_on;
-- Turn off Green and Blue when displaying pipe
Green_Data <= NOT (pipe_on or tank_on);
Blue_Data <=  NOT (pipe_on);

RGB_Display_Ball: Process (Bullet_X_pos, Bullet_Y_pos, Player_X_pos, Player_Y_pos, Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size, Bullet_Size)
BEGIN
	IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 	(Ball_X_pos + Size >= '0' & pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= '0' & pixel_row ) THEN
 		Ball_on <= '1';
 	ELSE
 		Ball_on <= '0';
	END IF;
	
	IF ('0' & Player_X_pos <= pixel_column + Size) AND
 	(Player_X_pos + Size >= '0' & pixel_column) AND
 	('0' & Player_Y_pos <= pixel_row + Size) AND
 	(Player_Y_pos + Size >= '0' & pixel_row ) THEN
 		Player_on <= '1';
 	ELSE
 		Player_on <= '0';
	END IF;
	
	IF s_active = '1' AND 
	('0' & Bullet_X_pos <= pixel_column + Bullet_Size) AND
 	(Bullet_X_pos + Bullet_Size >= '0' & pixel_column) AND
 	('0' & Bullet_Y_pos <= pixel_row + Bullet_Size) AND
 	(Bullet_Y_pos + Bullet_Size >= '0' & pixel_row ) THEN
 		Bullet_on <= '1';
 	ELSE
 		Bullet_on <= '0';
	END IF;
END process RGB_Display_Ball;

--move_pipes: process
--	variable fly : std_logic_vector(9 DOWNTO 0);
--	variable flyInt: integer range 0 to 36;
--	variable scorev : integer range 0 to 1001 := 0;
--begin 
--	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
--
--			-------------------------------------------------------
--			-- if the button is pressed then we move into fast mode
--				if button = '1' then
--					tank_Y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
--					pipe_x_motion <= CONV_STD_LOGIC_VECTOR(4,10);
--				else
--					tank_Y_motion <= CONV_STD_LOGIC_VECTOR(6,10);
--					pipe_x_motion <= CONV_STD_LOGIC_VECTOR(12,10);
--				end if;
--			-------------------------------------------------------
--			-------------------------------------------------------
--			-- if the mouse is clicked then the tank will flap
--				if left_button = '1' or right_button = '1' then
--					if button = '1' then
--						flyInt:=12;
--					else 
--						flyInt:=36;
--					end if;
--				end if;
--			-------------------------------------------------------
--			-------------------------------------------------------
--			-- here we are modelling the tank flap
--			-- the brid will flap and then fall to the ground again
--				if (flyInt > 0) then
--					flyInt:=flyInt-1;
--				else 
--					flyInt:=0;
--				end if;
--			-------------------------------------------------------
--			-------------------------------------------------------
--			-- here the tank and pipe positions are set
--				fly :=  - CONV_STD_LOGIC_VECTOR(flyInt,10);
--				tank_Y_pos <= tank_Y_pos + tank_Y_motion + fly;
--				pipe_x_pos <= pipe_x_pos - pipe_x_motion;
--			-------------------------------------------------------		
--			-------------------------------------------------------
--			-- here the score increases as the the tank succesfully gets thru the pipes
--				if (pipe_x_pos = tank_X_pos) and button = '1' then
--					scorev := scorev + 1;
--					score <= scorev;
--				elsif (tank_X_pos > (pipe_x_pos + 10) and (tank_X_pos + tank_size) < (pipe_x_pos + pipe_thick - 10)) and button = '0' then
--					scorev := scorev + 1;
--					score <= scorev;
--				end if;
--
--			-------------------------------------------------------
--end process move_pipes;

		

end architecture behavior;