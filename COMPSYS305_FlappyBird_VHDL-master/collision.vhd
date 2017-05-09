LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
USE ieee.numeric_std.ALL;

ENTITY collision IS
   PORT(SIGNAL vert_sync_int				: IN std_logic;
		  SIGNAL pipe_on						: IN std_logic_vector(1 DOWNTO 0);
		  SIGNAL ball_on						: IN std_logic;
		  
		  SIGNAL ball_X_pos					: IN std_logic_vector(10 DOWNTO 0);
		  SIGNAL ball_Y_pos					: IN std_logic_vector(10 DOWNTO 0);
		  
		  SIGNAL pipe1_X_pos					: IN std_logic_vector(10 DOWNTO 0);
		  SIGNAL pipe1_Y_pos					: IN std_logic_vector(10 DOWNTO 0);
		  SIGNAL pipe2_X_pos					: IN std_logic_vector(10 DOWNTO 0);
		  SIGNAL pipe2_Y_pos					: IN std_logic_vector(10 DOWNTO 0);
		  
		  SIGNAL game_state					: IN std_logic_vector(1 DOWNTO 0);
		  SIGNAL score_reset					: IN std_logic;
		  
		  SIGNAL lives 			 			: OUT std_logic_vector(1 DOWNTO 0);
		  SIGNAL ledON 						: OUT std_logic;
		  SIGNAL imba	 						: OUT std_logic;
		  SIGNAL score				 			: OUT std_logic_vector(7 DOWNTO 0);
		  SIGNAL high_score				 	: OUT std_logic_vector(7 DOWNTO 0));
		  
END collision;

architecture bhv of collision is

	
BEGIN

score_function: process
	variable ones					: std_logic_vector(3 downto 0) := "0000";
	variable tens					: std_logic_vector(3 downto 0) := "0000";
	variable cross1				: std_logic := '0';
	variable cross2				: std_logic := '0';
	variable scored				: std_logic := '0';
	variable start					: integer range 0 to 52 := 0;
	variable imba_count			: integer range 0 to 82 := 0;
	variable lives_t				: integer range 0 to 3;
	variable ball_hit_t			: std_logic;
	variable high_score_t		: std_logic_vector(7 downto 0) := "00000000";
	
BEGIN
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
		
		IF score_reset = '1' THEN
			start := 50;
		END IF;
		
		-- check if within pipe
		IF (Ball_X_pos - CONV_STD_LOGIC_VECTOR(8,11) <= pipe1_X_pos + CONV_STD_LOGIC_VECTOR(25,11)) AND -- pipe 1
			(Ball_X_pos + CONV_STD_LOGIC_VECTOR(8,11) >= pipe1_X_pos - CONV_STD_LOGIC_VECTOR(25,11)) AND
			cross1 = '0' THEN
			cross1 := '1';
		ELSIF (Ball_X_pos - CONV_STD_LOGIC_VECTOR(8,11) <= pipe2_X_pos + CONV_STD_LOGIC_VECTOR(25,11)) AND -- pipe 2
				(Ball_X_pos + CONV_STD_LOGIC_VECTOR(8,11) >= pipe2_X_pos - CONV_STD_LOGIC_VECTOR(25,11)) AND 
				cross2 = '0' THEN
			cross2 := '1';
		-- not in pipe
		ELSIF ((Ball_X_pos - CONV_STD_LOGIC_VECTOR(8,11) > pipe2_X_pos + CONV_STD_LOGIC_VECTOR(25,11)) OR -- pipe 2
				(Ball_X_pos + CONV_STD_LOGIC_VECTOR(8,11) < pipe2_X_pos - CONV_STD_LOGIC_VECTOR(25,11)))AND 
				cross2 = '1' THEN
			cross2 := '0';
			scored := '1';
		ELSIF ((Ball_X_pos - CONV_STD_LOGIC_VECTOR(8,11) > pipe1_X_pos + CONV_STD_LOGIC_VECTOR(25,11)) OR -- pipe 1
				(Ball_X_pos + CONV_STD_LOGIC_VECTOR(8,11) < pipe1_X_pos - CONV_STD_LOGIC_VECTOR(25,11)))AND 
				cross1 = '1' THEN
			cross1 := '0';
			scored := '1';	
		END IF;
		
		-- check if hits pipe
		IF ((Ball_Y_pos - CONV_STD_LOGIC_VECTOR(8,11)) <= (pipe1_Y_pos - CONV_STD_LOGIC_VECTOR(50,11)) OR -- pipe 1
			(Ball_Y_pos + CONV_STD_LOGIC_VECTOR(8,11)) >= (pipe1_Y_pos + CONV_STD_LOGIC_VECTOR(50,11))) AND
			cross1 = '1' THEN
			ball_hit_t := '1';
		END IF;
		IF ((Ball_Y_pos - CONV_STD_LOGIC_VECTOR(8,11)) <= (pipe2_Y_pos - CONV_STD_LOGIC_VECTOR(50,11)) OR -- pipe 2
			(Ball_Y_pos + CONV_STD_LOGIC_VECTOR(8,11)) >= (pipe2_Y_pos + CONV_STD_LOGIC_VECTOR(50,11))) AND
			cross2 = '1' THEN
			ball_hit_t := '1';
		END IF;
		
		IF ball_hit_t = '1' AND imba_count = 0 THEN
			imba_count := 1;
			lives_t := lives_t - 1;
		ELSIF ball_hit_t = '1' AND imba_count < 80 THEN	
			imba_count := imba_count + 1;
		ELSE
			imba_count := 0;
			ball_hit_t := '0';
		END IF;
		
		
		imba <= ball_hit_t;
		
		-- initial conditions
		IF start <= 50 THEN
			ball_hit_t := '0';
			ones := "0000";
			tens := "0000";
			lives_t := 3;
			start := start + 1;
		END IF;
		
		-- if was in pipe and then left, adds to the score
		IF scored = '1' THEN
			scored := '0';
			IF ones = "1001" THEN
				ones := "0000";
				IF tens = "1001" THEN
					tens := "0000";
				ELSE
					tens := tens + 1;
				END IF;
			ELSE
				ones := ones + 1;
			END IF;
			if (high_score_t < (tens & ones)) and game_state /= "10" then
				high_score_t := tens & ones;
			end if;
		END IF;
		
		high_score <= high_score_t;
		lives <= CONV_STD_LOGIC_VECTOR(lives_t,2);
		ledON <= cross1 OR cross2;	
		score <= tens & ones;

END process;
	
END architecture;

