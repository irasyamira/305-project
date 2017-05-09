LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
USE ieee.numeric_std.ALL;

ENTITY collision IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);
	-- signal PB0, PB1, PB2 are button 0, 1, 2 respectively
   PORT(SIGNAL vert_sync_int				: IN std_logic;
		  SIGNAL pixel_column				: IN std_logic_vector(10 DOWNTO 0);
		  SIGNAL pixel_row					: IN std_logic_vector(10 DOWNTO 0);
		  
		  SIGNAL death				 			: OUT std_logic;
		  SIGNAL score				 			: OUT std_logic_vector(10 DOWNTO 0));
END pipe;

architecture behavior of pipe is

	SIGNAL pixel_row_t, pixel_column_t	: std_logic_vector(10 DOWNTO 0);
	SIGNAL Pipe_X_pos							: integer;
	SIGNAL Pipe_Y_pos 						: std_logic_vector(10 DOWNTO 0);
	SIGNAL Pipe_width, Pipe_gap_height	: std_logic_vector(10 DOWNTO 0);
	SIGNAL Pipe_X_pos_out_t					: std_logic_vector(10 DOWNTO 0);
	SIGNAL Rand_num 							: integer range 0 to 6;

BEGIN

pixel_column_t <= pixel_column;
pixel_row_t <= pixel_row;
Pipe_width <= CONV_STD_LOGIC_VECTOR(25,11);
Pipe_gap_height <= CONV_STD_LOGIC_VECTOR(50,11);


RGB_Display: Process (Pipe_X_pos, Pipe_Y_pos, pixel_column, pixel_row, Pipe_width, Pipe_gap_height)
BEGIN
	
	-- Set whole pipe
	IF (Pipe_X_pos <= CONV_INTEGER(pixel_column + Pipe_width) AND
	(Pipe_X_pos + CONV_INTEGER(Pipe_width)) >= CONV_INTEGER(pixel_column)) THEN
		IF ('0' & Pipe_Y_pos <= pixel_row + Pipe_gap_height) AND -- set gap
		(Pipe_Y_pos + Pipe_gap_height >= '0' & pixel_row ) THEN
			Pipe_on <= '0';
		ELSE
			Pipe_on <= '1';
		END IF;
 	ELSE
 		Pipe_on <= '0';
	END IF;

END process RGB_Display;


Pipe_Ball: process
	variable start : integer := 0;
	variable Pipe_X_pos_t : integer;
	variable Pipe_Y_pos_t : std_logic_vector(10 DOWNTO 0);
	variable set_Y : std_logic;
BEGIN
	-- Move pipe once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
		
		-- reset switch on
		IF pipe_reset = '1' THEN
			start := 50;
		END IF;
		
		-- pipe move logic
		IF Pipe_X_pos <= -30 THEN -- to the start if hits boundary
			Pipe_X_pos_t := Pipe_X_pos + 700;
			set_Y := '1';
		ELSE
			IF pipe_enable = '0' THEN
				Pipe_X_pos_t := Pipe_X_pos;
			ELSE
				Pipe_X_pos_t := Pipe_X_pos - 2;
			END IF;
		END IF;
		
		
		-- initial conditions
		IF (start <= 50) THEN
			IF (pipe_number = '0') THEN -- pipe 1
				Pipe_X_pos_t := 666;
			ELSE -- pipe 2
				Pipe_X_pos_t := 986;
			END IF;
			set_Y := '1';
			start := start + 1;
		END IF;
		
		
				
		-- set new X
		Pipe_X_pos <= Pipe_X_pos_t;
		
		-- set new Y if needed
		IF (set_Y = '1') THEN
			CASE rand_num IS
				WHEN 0 => Pipe_Y_pos_t := CONV_STD_LOGIC_VECTOR(156,11);
				WHEN 1 => Pipe_Y_pos_t := CONV_STD_LOGIC_VECTOR(184,11);
				WHEN 2 => Pipe_Y_pos_t := CONV_STD_LOGIC_VECTOR(212,11);
				WHEN 3 => Pipe_Y_pos_t := CONV_STD_LOGIC_VECTOR(240,11);
				WHEN 4 => Pipe_Y_pos_t := CONV_STD_LOGIC_VECTOR(268,11);
				WHEN 5 => Pipe_Y_pos_t := CONV_STD_LOGIC_VECTOR(296,11);
				WHEN 6 => Pipe_Y_pos_t := CONV_STD_LOGIC_VECTOR(324,11);
				WHEN OTHERS => Pipe_Y_pos_t := CONV_STD_LOGIC_VECTOR(240,11);
			END CASE;
			set_Y := '0';
		END IF;
		Pipe_Y_pos <= Pipe_Y_pos_t;
		
		
		
		-- set out
		IF Pipe_X_pos <= 0 THEN
			Pipe_X_pos_out_t <= CONV_STD_LOGIC_VECTOR(0,11);
		ELSE
			Pipe_X_pos_out_t <= CONV_STD_LOGIC_VECTOR(Pipe_X_pos,11);
		END IF;
		-- set out for collision detection
		pipe_X_pos_out <= Pipe_X_pos_out_t;
		pipe_Y_pos_out <= Pipe_Y_pos;
				
END process Pipe_Ball;

Pipe_count: process (clk) -- get a rand_cnt number between 119 and 359
	variable counter : integer range 0 to 6 := 0;
BEGIN
	IF (counter = 6) THEN
		counter := 0;
	ELSE
		counter := counter + 1;
	END IF;
	Rand_num <= counter;
end process;

END behavior;

