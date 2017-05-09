LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
USE ieee.numeric_std.ALL;

ENTITY pipe IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);
	-- signal PB0, PB1, PB2 are button 0, 1, 2 respectively
   PORT(SIGNAL vert_sync_int				: IN std_logic;
		  SIGNAL pixel_column				: IN std_logic_vector(10 DOWNTO 0);
		  SIGNAL pixel_row					: IN std_logic_vector(10 DOWNTO 0);
		  SIGNAL clk							: IN std_logic;
		  SIGNAL pipe_number					: IN std_logic;
		  SIGNAL pipe_enable					: IN std_logic;
		  SIGNAL pipe_reset					: IN std_logic;
		  SIGNAL level_select				: IN std_logic_vector(1 DOWNTO 0);
		  SIGNAL pipe_on			 			: OUT std_logic;
		  SIGNAL pipe_X_pos_out				: OUT std_logic_vector(10 DOWNTO 0);
		  SIGNAL pipe_Y_pos_out				: OUT std_logic_vector(10 DOWNTO 0));
END pipe;

architecture behavior of pipe is
	SIGNAL Pipe_X_pos							: integer range -31 to 990;
	SIGNAL Pipe_Y_pos 						: integer range 156 to 296;
	SIGNAL Pipe_width, Pipe_gap_height	: integer range 0 to 52;
	SIGNAL Pipe_X_pos_out_t					: std_logic_vector(10 DOWNTO 0);
	SIGNAL Rand_num 							: integer range 0 to 6 ;

BEGIN

Pipe_width <= 25;
Pipe_gap_height <= 50;


RGB_Display: Process (Pipe_X_pos, Pipe_Y_pos, pixel_column, pixel_row, Pipe_width, Pipe_gap_height, Pipe_Reset)
BEGIN
	
	IF (pipe_reset = '0') THEN
		-- Set whole pipe
		IF (Pipe_X_pos - Pipe_width <= CONV_INTEGER(pixel_column) AND
		(Pipe_X_pos + Pipe_width >= CONV_INTEGER(pixel_column))) THEN
			IF (Pipe_Y_pos + Pipe_gap_height >= CONV_INTEGER(pixel_row)) AND -- set gap
			(Pipe_Y_pos - Pipe_gap_height <= CONV_INTEGER(pixel_row)) THEN
				Pipe_on <= '0';
			ELSE -- display pipe gap
				Pipe_on <= '1';
			END IF;
		ELSE
			Pipe_on <= '0';
		END IF;
	ELSE
		Pipe_on <= '0';
	END IF;	
END process RGB_Display;

-- set roulette for random pipe gap
Counter : process(clk)
	variable counter : integer range 0 to 6 := 0;
BEGIN
	counter := counter + 1;
	IF counter >= 5 THEN
		counter := 0;
	END IF;	
	Rand_num <= counter;
END process;



Pipe_Ball: process
	variable start : integer range 0 to 52 := 0;
	variable Pipe_X_pos_t : integer range -31 to 990;
	variable Pipe_Y_pos_t : integer range 156 to 296;
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
			CASE Rand_num IS
			-- set new pipe gap
				WHEN 0 => Pipe_Y_pos_t := 156;
				WHEN 1 => Pipe_Y_pos_t := 184;
				WHEN 2 => Pipe_Y_pos_t := 212;
				WHEN 3 => Pipe_Y_pos_t := 240;
				WHEN 4 => Pipe_Y_pos_t := 268;
				WHEN 5 => Pipe_Y_pos_t := 296;
				WHEN OTHERS => Pipe_Y_pos_t := 240;
			END CASE;
		ELSE
			-- pipe move logic
			IF level_select = "00" and pipe_enable = '1' THEN
				Pipe_X_pos_t := Pipe_X_pos - 4;
			ELSIF level_select = "01" and pipe_enable = '1' THEN
				Pipe_X_pos_t := Pipe_X_pos - 6;
			ELSIF level_select = "10" and pipe_enable = '1' THEN
				Pipe_X_pos_t := Pipe_X_pos - 8;
			ELSIF level_select = "11" and pipe_enable = '1' THEN
				Pipe_X_pos_t := Pipe_X_pos - 10;
			ELSE
				Pipe_X_pos_t := Pipe_X_pos_t;
			END IF;
		END IF;
		
		
		-- initial conditions
		IF (start <= 50) THEN
			IF (pipe_number = '0') THEN -- pipe 1
				Pipe_X_pos_t := 670;
			ELSE -- pipe 2
				Pipe_X_pos_t := 990;
			END IF;
			
			CASE Rand_num IS
			-- set new pipe gap
				WHEN 0 => Pipe_Y_pos_t := 156;
				WHEN 1 => Pipe_Y_pos_t := 184;
				WHEN 2 => Pipe_Y_pos_t := 212;
				WHEN 3 => Pipe_Y_pos_t := 240;
				WHEN 4 => Pipe_Y_pos_t := 268;
				WHEN 5 => Pipe_Y_pos_t := 296;
				WHEN OTHERS => Pipe_Y_pos_t := 240;
			END CASE;
			start := start + 1;
		END IF;

		-- set new X
		Pipe_X_pos <= Pipe_X_pos_t;
		Pipe_Y_pos <= Pipe_Y_pos_t;
		
		
		
		-- set out
		IF Pipe_X_pos <= 0 THEN
			Pipe_X_pos_out_t <= CONV_STD_LOGIC_VECTOR(0,11);
		ELSE
			Pipe_X_pos_out_t <= CONV_STD_LOGIC_VECTOR(Pipe_X_pos,11);
		END IF;
		-- set out for collision detection
		pipe_X_pos_out <= Pipe_X_pos_out_t;
		pipe_Y_pos_out <= CONV_STD_LOGIC_VECTOR(Pipe_Y_pos,11);
				
END process Pipe_Ball;


END behavior;

