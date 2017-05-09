LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;

ENTITY game IS
   PORT(	clk											: IN STD_LOGIC;
			ball_on										: IN STD_LOGIC;
			pipe_on										: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			rom_mux										: IN STD_LOGIC;
			sw0, sw9										: IN STD_LOGIC;
			left_click									: IN STD_LOGIC;
			right_click									: IN STD_LOGIC;
			score_in										: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			lives											: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			imba											: IN STD_LOGIC;
			pixel_row									: IN STD_LOGIC_VECTOR(10 DOWNTO 0);
			red_data, green_data, blue_data		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			Game_Reset,Score_Reset				   : OUT STD_LOGIC;
			Game_Enable									: OUT STD_LOGIC;
			Game_States									: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			Level_State									: OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END game;

architecture behavior of game is

TYPE GAME_STATE is (WELCOME, GAME, PRACTICE, GAME_END);
signal CS: GAME_STATE := WELCOME;

SIGNAL prev_left_click	 : std_logic := '1';
SIGNAL prev_right_click	 : std_logic := '1';
SIGNAL red_data_t  		 : std_logic_vector(3 downto 0) := "1111";
SIGNAL green_data_t		 : std_logic_vector(3 downto 0) := "1111";
SIGNAL blue_data_t 		 : std_logic_vector(3 downto 0) := "1111";
SIGNAL score_tens			 : std_logic_vector(3 downto 0); 

BEGIN			 

score_tens <= score_in(7 downto 4);

GAME_STATES_REG: Process(CS, sw0, sw9, left_click, right_click, lives, clk)
BEGIN
	
	IF (sw9 = '1') THEN
		CS <= WELCOME;
	ELSIF (clk'event AND clk = '1') THEN
		CASE CS IS
			WHEN WELCOME => 
				IF ((left_click = '1') AND (prev_left_click = '0')) THEN
					IF (sw0 = '1') THEN
						CS <= GAME;
					ELSE
						CS <= PRACTICE;
					END IF;
				ELSE
					CS <= CS;
				END IF;
			WHEN GAME => 
				IF (lives = "00") THEN
					CS <= GAME_END;
				ELSE
					CS <= CS;
				END IF;
			WHEN PRACTICE => 
				IF (lives = "00") THEN
					CS <= GAME_END;
				ELSE
					CS <= CS;
				END IF;
			WHEN GAME_END =>  
				IF ((right_click = '1') AND (prev_right_click = '0')) THEN	
					CS <= WELCOME;
				ELSE 
					CS <= CS;
				END IF;
		END CASE;
		prev_left_click <= left_click;
		prev_right_click <= right_click;
	END IF;
END PROCESS GAME_STATES_REG;	

OUT_LOGIC: Process(CS, score_tens) -- ouput logic of each state
	variable level_state_t	: std_logic_vector(1 downto 0);
BEGIN
	CASE CS IS
		WHEN WELCOME =>	-- select game mode state
			Game_States <= "00";
			Game_Reset 	<= '1';
			Score_Reset <= '1';
			Game_Enable <= '0';
			level_state_t := "00";
		WHEN GAME => -- game mode
			Game_States <= "01";
			Game_Reset 	<= '0';
			Score_Reset <= '0';
			Game_Enable <= '1';
			IF (score_tens < 1) THEN -- level select
				level_state_t := "00";
			ELSIF (score_tens < 2) THEN
				level_state_t := "01";
			ELSIF (score_tens < 3) THEN
				level_state_t := "10";
			ELSE
				level_state_t := "11";	
			END IF;
		WHEN PRACTICE => -- practice mode
			Game_States <= "10";
			Game_Reset 	<= '0';
			Score_Reset <= '0';
			Game_Enable <= '1';
			level_state_t := "00";
		WHEN GAME_END =>	-- end screen for death
			Game_States <= "11";
			Game_Reset 	<= '1';
			Score_Reset <= '0';
			Game_Enable <= '0';
			level_state_t := "00";
	END CASE;	
	Level_State <= level_state_t;
END PROCESS OUT_LOGIC;

RGB_Switch: Process (pixel_row, Ball_on, Pipe_on, rom_mux, CS, imba)
BEGIN	
	IF (rom_mux = '1') THEN -- rendering text
		Red_Data_t <= "1111";
		Green_Data_t <= "1111";
		Blue_Data_t <= "1111";
	ELSIF (Ball_on = '1') THEN -- when rendering ball
		IF (imba = '1') THEN -- invulnerable 
			Red_Data_t <= "0111";
			Green_Data_t <= "1000";
			Blue_Data_t <= "0000";
		ELSE -- vulnerable
			Red_Data_t <= "1111";
			Green_Data_t <= "1100";
			Blue_Data_t <= "0000";
		END IF;
	ELSIF (Pipe_on(0) = '1') OR (Pipe_on(1) = '1') THEN -- when rendering pipe 0
		Red_Data_t <= "0000";
		Green_Data_t <= "1100";
		Blue_Data_t <= "0000";
	ELSE -- when rendering back ground
		Red_Data_t <= "1000";
		Green_Data_t <= '0' & pixel_row(8 downto 6);
		Blue_Data_t <= "1111";
	END IF;
END PROCESS RGB_Switch;

Red_Data <= Red_Data_t;
Green_Data <= Green_Data_t;
Blue_Data <= Blue_Data_t;

END behavior;