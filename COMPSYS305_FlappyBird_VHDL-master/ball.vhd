LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;

ENTITY ball IS
   PORT(SIGNAL left_click					: IN std_logic;
		  SIGNAL right_click					: IN std_logic;
		  SIGNAL vert_sync_int				: IN std_logic;
		  SIGNAL pixel_column				: IN std_logic_vector(10 DOWNTO 0);
		  SIGNAL pixel_row					: IN std_logic_vector(10 DOWNTO 0);
		  SIGNAL ball_enable					: IN std_logic;
		  SIGNAL ball_reset					: IN std_logic;
		  SIGNAL ball_on			 			: OUT std_logic;
		  SIGNAL ball_X_pos_out				: OUT std_logic_vector(10 DOWNTO 0);
		  SIGNAL ball_Y_pos_out				: OUT std_logic_vector(10 DOWNTO 0));
END ball;

architecture behavior of ball is

SIGNAL prev_left_click						: std_logic;
SIGNAL prev_right_click						: std_logic;
SIGNAL Ball_size 								: std_logic_vector(10 DOWNTO 0);  
SIGNAL Ball_Y_motion 						: std_logic_vector(10 DOWNTO 0);
SIGNAL Ball_Y_motion_t 						: std_logic_vector(10 DOWNTO 0);
SIGNAL Ball_Y_pos 							: std_logic_vector(10 DOWNTO 0);
SIGNAL Ball_Y_pos_t 							: std_logic_vector(10 DOWNTO 0);
SIGNAL Ball_X_pos								: std_logic_vector(10 DOWNTO 0);
SIGNAL Ball_X_pos_t							: std_logic_vector(10 DOWNTO 0);

begin

Ball_size <= CONV_STD_LOGIC_VECTOR(8,11);


Move_Ball: process
	variable count : integer range 0 to 7 := 0;
	variable start : integer range 0 to 52:= 0;
	variable x_flag : std_logic := '0';
BEGIN
	-- Move ball once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
		
		-- reset switch on
		IF ball_reset = '1' THEN
			start := 50;
		END IF;
		
		-- compute movement
		IF (ball_enable = '1') THEN
			-- move on the y axis
			IF ((left_click = '1') AND (prev_left_click = '0')) THEN
				Ball_Y_motion_t <= -CONV_STD_LOGIC_VECTOR(7,11);
			ELSIF (Ball_Y_motion = - CONV_STD_LOGIC_VECTOR(7,11)) THEN -- reset jump velocity
				Ball_Y_motion_t <= - CONV_STD_LOGIC_VECTOR(4,11);
				count := 0;
			ELSE -- accelerate downwards
				IF count = 7 THEN
					Ball_Y_motion_t <= Ball_Y_motion + 3;
					count := 0;
				ELSE
					count := count + 1;
				END IF;
			END IF;
			-- move on the x axis
			IF ((right_click = '1') AND (prev_right_click = '0')) THEN
				x_flag := not x_flag;
			ELSE
				x_flag := x_flag;
			END IF;
		ELSE
			
		END IF;
		
		-- Bounce off top of screen
		IF Ball_Y_pos <= Ball_size THEN
			Ball_Y_motion_t <= CONV_STD_LOGIC_VECTOR(2,11);
		-- Bounce on the bottom of screen
		ELSIF ('0' & Ball_Y_pos) >= CONV_STD_LOGIC_VECTOR(480,11) - Ball_size THEN
			Ball_Y_motion_t <= -(CONV_STD_LOGIC_VECTOR(2,11));
		ELSE
		END IF;
		
		-- stop movement if not enabled
		IF ball_enable = '1' THEN
			Ball_Y_pos_t <= Ball_Y_pos_t + Ball_Y_motion;
		ELSIF ball_enable = '0' THEN
			Ball_Y_pos_t <= Ball_Y_pos_t;
		END IF;
		
		-- flash movement from right click
		IF x_flag = '1' THEN
			Ball_X_pos_t <= CONV_STD_LOGIC_VECTOR(210,11);
		ELSIF x_flag = '0' THEN
			Ball_X_pos_t <= CONV_STD_LOGIC_VECTOR(160,11);
		END IF;		
		
		-- initial conditions
		IF start <= 50 THEN
			start := start + 1;
			x_flag := '0';
			Ball_Y_pos_t <= CONV_STD_LOGIC_VECTOR(240,11);
			Ball_Y_motion_t <= -CONV_STD_LOGIC_VECTOR(7,11);
		END IF;
		
		-- set prev states
		prev_left_click <= left_click;
		prev_right_click <= right_click;
		
		Ball_X_pos <= Ball_X_pos_t; -- set motions
		Ball_Y_motion <= Ball_Y_motion_t;
		Ball_Y_pos <= Ball_Y_pos_t;
		Ball_Y_pos_out <= Ball_Y_pos;
		Ball_X_pos_out <= Ball_X_pos;
		
END process Move_Ball;



RGB_Display: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Ball_size, ball_reset)
BEGIN
	IF (ball_reset = '0') THEN
		-- Set Ball_on ='1' to display ball
		IF (Ball_X_pos + Ball_size >= pixel_column ) AND
		(Ball_X_pos - Ball_size <= pixel_column) AND
		(Ball_Y_pos + Ball_size >= pixel_row ) AND
		(Ball_Y_pos - Ball_size <= pixel_row ) THEN
			Ball_on <= '1';
		ELSE
			Ball_on <= '0';
		END IF;
	ELSE
		Ball_on <= '0';
	END IF;
	
END process RGB_Display;


end behavior;