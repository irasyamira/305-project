LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY game_text IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);
   PORT(signal sw0							: in std_logic;
		  signal Word_Sel						: in std_logic_vector(1 downto 0);
		  signal pixel_column, pixel_row	: in std_logic_vector(10 downto 0);
		  signal score_in						: in std_logic_vector(7 downto 0);
		  signal lives							: in std_logic_vector(1 downto 0);
		  signal level							: in std_logic_vector(1 downto 0);
		  signal high_score_in				: in std_logic_vector(7 downto 0);
		  signal char_add						: out std_logic_vector(5 downto 0);
		  signal char_row, char_col		: out std_logic_vector(2 downto 0));
end game_text;

architecture behavior of game_text is

-- Video Display Signals   
signal pixel_row_t, pixel_column_t		: std_logic_vector(10 downto 0);
signal tens, ones 							: std_logic_vector(5 downto 0);
signal score_tens, score_ones 			: std_logic_vector(3 downto 0);
signal h_tens, h_ones 						: std_logic_vector(5 downto 0);
signal high_tens, high_ones 				: std_logic_vector(3 downto 0);
signal level_num								: std_logic_vector(5 downto 0);

begin           

pixel_column_t <= pixel_column;
pixel_row_t <= pixel_row;
score_ones <= score_in(3 downto 0);
score_tens <= score_in(7 downto 4);
high_ones <= high_score_in(3 downto 0);
high_tens <= high_score_in(7 downto 4);


Digit_process : process (score_ones, score_tens, level, high_ones, high_tens)
begin
	case score_ones is
		when "0000" => ones <= CONV_STD_LOGIC_VECTOR(48, 6); -- 0
		when "0001" => ones <= CONV_STD_LOGIC_VECTOR(49, 6); -- 1
		when "0010" => ones <= CONV_STD_LOGIC_VECTOR(50, 6); -- 2
		when "0011" => ones <= CONV_STD_LOGIC_VECTOR(51, 6); -- 3
		when "0100" => ones <= CONV_STD_LOGIC_VECTOR(52, 6); -- 4
		when "0101" => ones <= CONV_STD_LOGIC_VECTOR(53, 6); -- 5
		when "0110" => ones <= CONV_STD_LOGIC_VECTOR(54, 6); -- 6
		when "0111" => ones <= CONV_STD_LOGIC_VECTOR(55, 6); -- 7
		when "1000" => ones <= CONV_STD_LOGIC_VECTOR(56, 6); -- 8
		when "1001" => ones <= CONV_STD_LOGIC_VECTOR(57, 6); -- 9
		when OTHERS => ones <= CONV_STD_LOGIC_VECTOR(48, 6); -- 0
	end case;
	case score_tens is
		when "0000" => tens <= CONV_STD_LOGIC_VECTOR(48, 6); -- 0
		when "0001" => tens <= CONV_STD_LOGIC_VECTOR(49, 6); -- 1
		when "0010" => tens <= CONV_STD_LOGIC_VECTOR(50, 6); -- 2
		when "0011" => tens <= CONV_STD_LOGIC_VECTOR(51, 6); -- 3
		when "0100" => tens <= CONV_STD_LOGIC_VECTOR(52, 6); -- 4
		when "0101" => tens <= CONV_STD_LOGIC_VECTOR(53, 6); -- 5
		when "0110" => tens <= CONV_STD_LOGIC_VECTOR(54, 6); -- 6
		when "0111" => tens <= CONV_STD_LOGIC_VECTOR(55, 6); -- 7
		when "1000" => tens <= CONV_STD_LOGIC_VECTOR(56, 6); -- 8
		when "1001" => tens <= CONV_STD_LOGIC_VECTOR(57, 6); -- 9
		when OTHERS => tens <= CONV_STD_LOGIC_VECTOR(48, 6); -- 0
	end case;
	case high_ones is
		when "0000" => h_ones <= CONV_STD_LOGIC_VECTOR(48, 6); -- 0
		when "0001" => h_ones <= CONV_STD_LOGIC_VECTOR(49, 6); -- 1
		when "0010" => h_ones <= CONV_STD_LOGIC_VECTOR(50, 6); -- 2
		when "0011" => h_ones <= CONV_STD_LOGIC_VECTOR(51, 6); -- 3
		when "0100" => h_ones <= CONV_STD_LOGIC_VECTOR(52, 6); -- 4
		when "0101" => h_ones <= CONV_STD_LOGIC_VECTOR(53, 6); -- 5
		when "0110" => h_ones <= CONV_STD_LOGIC_VECTOR(54, 6); -- 6
		when "0111" => h_ones <= CONV_STD_LOGIC_VECTOR(55, 6); -- 7
		when "1000" => h_ones <= CONV_STD_LOGIC_VECTOR(56, 6); -- 8
		when "1001" => h_ones <= CONV_STD_LOGIC_VECTOR(57, 6); -- 9
		when OTHERS => h_ones <= CONV_STD_LOGIC_VECTOR(48, 6); -- 0
	end case;
	case high_tens is
		when "0000" => h_tens <= CONV_STD_LOGIC_VECTOR(48, 6); -- 0
		when "0001" => h_tens <= CONV_STD_LOGIC_VECTOR(49, 6); -- 1
		when "0010" => h_tens <= CONV_STD_LOGIC_VECTOR(50, 6); -- 2
		when "0011" => h_tens <= CONV_STD_LOGIC_VECTOR(51, 6); -- 3
		when "0100" => h_tens <= CONV_STD_LOGIC_VECTOR(52, 6); -- 4
		when "0101" => h_tens <= CONV_STD_LOGIC_VECTOR(53, 6); -- 5
		when "0110" => h_tens <= CONV_STD_LOGIC_VECTOR(54, 6); -- 6
		when "0111" => h_tens <= CONV_STD_LOGIC_VECTOR(55, 6); -- 7
		when "1000" => h_tens <= CONV_STD_LOGIC_VECTOR(56, 6); -- 8
		when "1001" => h_tens <= CONV_STD_LOGIC_VECTOR(57, 6); -- 9
		when OTHERS => h_tens <= CONV_STD_LOGIC_VECTOR(48, 6); -- 0
	end case;
	case level is
		when "00" => level_num <= CONV_STD_LOGIC_VECTOR(49, 6); -- level 1
		when "01" => level_num <= CONV_STD_LOGIC_VECTOR(50, 6); -- level 2
		when "10" => level_num <= CONV_STD_LOGIC_VECTOR(51, 6); -- level 3
		when "11" => level_num <= CONV_STD_LOGIC_VECTOR(52, 6); -- level 4
		when OTHERS => level_num <= CONV_STD_LOGIC_VECTOR(48, 6); -- 0
	end case;
end process;


TEXT_Display: process (pixel_column_t, pixel_row_t, sw0, word_Sel, ones, tens, lives, level_num, h_tens, h_ones)
begin
		
		--WELCOME state
		if (Word_Sel = "00") then
		--Display FLASHY BALL
		--*
		if (pixel_column_t >= CONV_STD_LOGIC_VECTOR(128, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(157, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(42, 6);
		--F
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(160, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(6, 6);
		--L
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(224, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(12, 6);
		--A
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(224, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(1, 6);
		--S
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(19, 6);
		--H
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(8, 6);
		--Y
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(25, 6);
		--B
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(384, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(2, 6);
		--A
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(384, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(416, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(1, 6);
		--L
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(416, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(448, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(12, 6);
		--L
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(448, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(480, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(12, 6);
		--*
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(480, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(509, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(127, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(42, 6);
		--GAME	
		--G
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(335, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(7, 6);
		--A
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(335, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(1, 6);
		--M
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(335, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(13, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(335, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		--PRACTICE
		--P
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(272, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(16, 6);
		--R
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(272, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(18, 6);
		--A
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(1, 6);
		--C
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(3, 6);
		--T
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(20, 6);
		--I
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(9, 6);
		--C
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(368, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(3, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(368, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(384, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		
		--GAME SEL 1
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(240, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(335, 10)) and
			(sw0 = '1') then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(41, 6);
		--GAME SEL 2
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(384, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(400, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(335, 10)) and
			(sw0 = '1') then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(40, 6);
		--PRACTICE SEL 1
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(240, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) and
			(sw0 = '0') then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(41, 6);
		--PRACTICE SEL 2
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(384, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(400, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(367, 10)) and
			(sw0 = '0') then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(40, 6);	
		-- Display: GROUP14: Jack & Andrew
		--G
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(32, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(7, 6);
		--R
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(32, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(48, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(18, 6);
		--O
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(48, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(64, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(15, 6);
		--U
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(64, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(80, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(21, 6);
		--P
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(80, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(16, 6);
		--1
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(112, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(49, 6);
		--4
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(112, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(128, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(52, 6);
		---
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(128, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(144, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(45, 6);
		--J
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(144, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(160, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(10, 6);
		--A
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(160, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(176, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(1, 6);
		--C
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(176, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(3, 6);
		--K
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(208, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(11, 6);
		--&
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(224, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(240, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(38, 6);
		--A
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(272, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(1, 6);
		--N
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(272, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(14, 6);	
		--D
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(4, 6);	
		--R
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(18, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);	
		--W
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(480, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(23, 6);	
		--No Text
		else
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(32, 6);
		end if;
	end if;
	
	--GAME state
	if (Word_Sel = "01") then
		--Display SCORE
		--S
		if (pixel_column_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(32, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(19, 6);
		--C
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(32, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(48, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(3, 6);
		--O
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(48, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(64, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(15, 6);
		--R
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(64, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(80, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(18, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(80, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		--DIGIT 1
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(112, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(128, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= tens;
		--DIGIT 2
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(128, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(144, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= ones;
			
		-- Display Level Number
		--L
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(480, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(496, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(12, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(496, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(512, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		--V
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(512, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(528, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(22, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(528, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(544, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		--L
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(544, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(560, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(12, 6);
		--Digit
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(576, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(592, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= level_num;
		--Display Lives
		--L	
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(496, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(512, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(12, 6);	
		--P
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(512, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(528, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(16, 6);	
		--Heart
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(541, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(558, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) and
			lives >= "01" then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(63, 6);	
		--Heart
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(558, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(574, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) and
			lives >= "10" then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(63, 6);
		--Heart
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(574, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(590, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) and
			lives >= "11" then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(63, 6);
		--No Text
		else
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(32, 6);
		end if;
	end if;
	
	--PRACTICE state
	if (Word_Sel = "10") then
		--Display SCORE
		--S
		if (pixel_column_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(32, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(19, 6);
		--C
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(32, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(48, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(3, 6);
		--O
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(48, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(64, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(15, 6);
		--R
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(64, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(80, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(18, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(80, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(96, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		--DIGIT 1
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(112, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(128, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= tens;
		--DIGIT 2
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(128, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(144, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= ones;
		--Display PRACTICE
		--P
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(464, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(480, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(16, 6);
		--R
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(480, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(496, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(18, 6);
		--A
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(496, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(512, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(1, 6);
		--C
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(512, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(528, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(3, 6);
		--T
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(528, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(544, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(20, 6);
		--I
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(544, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(560, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(9, 6);
		--C
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(560, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(576, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(3, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(576, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(592, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(16, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(31, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
			
		--Display Lives
		--L	
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(496, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(512, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(12, 6);	
		--P
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(512, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(528, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(16, 6);	
		--Heart
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(541, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(558, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) and
			lives >= "01" then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(63, 6);	
		--Heart
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(558, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(574, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) and
			lives >= "10" then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(63, 6);
		--Heart
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(574, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(590, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(31, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(46, 10)) and
			lives >= "11" then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(63, 6);			
		--No Text
		else
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(32, 6);
		end if;
	end if;

	--GAME_end state
	if (Word_Sel = "11") then
		--Display THE end
		--T
		if (pixel_column_t >= CONV_STD_LOGIC_VECTOR(224, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(223, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(20, 6);
		--H
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(223, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(8, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(223, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(384, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(223, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		--N
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(384, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(416, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(223, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(14, 6);
		--D
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(416, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(448, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(192, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(223, 10)) then
			char_row <= pixel_row_t(4 downto 2);
			char_col <= pixel_column_t(4 downto 2);
			char_add <= CONV_STD_LOGIC_VECTOR(4, 6);
		--Display HIGHSCORE 00
		--H
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(240, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(8, 6);
		--I
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(272, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(9, 6);
		--G
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(272, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(7, 6);
		--H
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(8, 6);
		--S
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(19, 6);
		--C
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(3, 6);
		--O
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(15, 6);
		--R
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(368, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(18, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(368, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(384, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		--Digit 1
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(400, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(416, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= h_tens;
		--Digit 2
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(416, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(432, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(319, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= h_ones;
			
			
		-- Display YOURSCORE 00	
		--Y
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(240, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(25, 6);
		--O
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(256, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(272, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(15, 6);
		--U
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(272, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(21, 6);
		--R
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(288, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(18, 6);
		--S
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(304, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(19, 6);
		--C
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(320, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(3, 6);
		--O
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(336, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(15, 6);
		--R
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(352, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(368, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(18, 6);
		--E
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(368, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(384, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(5, 6);
		--Digit 1
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(400, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(416, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= tens;
		--Digit 2
		elsif (pixel_column_t >= CONV_STD_LOGIC_VECTOR(416, 10)) and
			(pixel_column_t <= CONV_STD_LOGIC_VECTOR(432, 10)) and
			(pixel_row_t >= CONV_STD_LOGIC_VECTOR(270, 10)) and
			(pixel_row_t <= CONV_STD_LOGIC_VECTOR(286, 10)) then
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= ones;	
		--No Text
		else
			char_row <= pixel_row_t(3 downto 1);
			char_col <= pixel_column_t(3 downto 1);
			char_add <= CONV_STD_LOGIC_VECTOR(32, 6);
		end if;
	end if;
	
end process TEXT_Display;
	
end behavior;