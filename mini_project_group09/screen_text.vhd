library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity screen_text is
	
	PORT(pixel_row, pixel_col   : in std_logic_vector(10 downto 0);
		  sw0 					    : in std_logic;
		  game_view 			    : in std_logic_vector (2 downto 0);
		  paused 				    : in std_logic;
		  score_tens, score_ones : in std_logic_vector(3 downto 0);
		  time_tens, time_ones 	 : in std_logic_vector(3 downto 0);
		  tanks_left			 	 : in std_logic_vector(3 downto 0);
		  o_character_address	 : out std_logic_vector(5 downto 0);
		  o_font_row, o_font_col : out std_logic_vector(2 downto 0));
end entity;

architecture behaviour of screen_text is
		signal character_address	    :  std_logic_vector(5 downto 0) := "000000";
		signal font_row, font_col	    : std_logic_vector(2 downto 0) := "000";	 
		signal tanks_left_char_rom, level, time_tens_char_rom, time_ones_char_rom, score_tens_char_rom, score_ones_char_rom : std_logic_vector(5 downto 0);	
begin	
	
	number_processing : process (tanks_left, time_tens, time_ones, score_tens, score_ones, game_view)
	begin
		case tanks_left is
			when "0000" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
			when "0001" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(49, 6);-- 1
			when "0010" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(50, 6);-- 2
			when "0011" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(51, 6);-- 3
			when "0100" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(52, 6);-- 4
			when "0101" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(53, 6);-- 5
			when "0110" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(54, 6);-- 6
			when "0111" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(55, 6);-- 7
			when "1000" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(56, 6);-- 8
			when "1001" => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(57, 6);-- 9
			when others => tanks_left_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
		end case;
		
		case time_tens is
			when "0000" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
			when "0001" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(49, 6);-- 1
			when "0010" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(50, 6);-- 2
			when "0011" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(51, 6);-- 3
			when "0100" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(52, 6);-- 4
			when "0101" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(53, 6);-- 5
			when "0110" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(54, 6);-- 6
			when "0111" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(55, 6);-- 7
			when "1000" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(56, 6);-- 8
			when "1001" => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(57, 6);-- 9
			when others => time_tens_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
		end case;
		
		case time_ones is
			when "0000" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
			when "0001" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(49, 6);-- 1
			when "0010" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(50, 6);-- 2
			when "0011" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(51, 6);-- 3
			when "0100" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(52, 6);-- 4
			when "0101" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(53, 6);-- 5
			when "0110" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(54, 6);-- 6
			when "0111" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(55, 6);-- 7
			when "1000" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(56, 6);-- 8
			when "1001" => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(57, 6);-- 9
			when others => time_ones_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
		end case;
		
		case score_tens is
			when "0000" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
			when "0001" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(49, 6);-- 1
			when "0010" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(50, 6);-- 2
			when "0011" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(51, 6);-- 3
			when "0100" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(52, 6);-- 4
			when "0101" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(53, 6);-- 5
			when "0110" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(54, 6);-- 6
			when "0111" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(55, 6);-- 7
			when "1000" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(56, 6);-- 8
			when "1001" => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(57, 6);-- 9
			when others => score_tens_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
		end case;
		
		case score_ones is
			when "0000" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
			when "0001" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(49, 6);-- 1
			when "0010" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(50, 6);-- 2
			when "0011" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(51, 6);-- 3
			when "0100" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(52, 6);-- 4
			when "0101" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(53, 6);-- 5
			when "0110" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(54, 6);-- 6
			when "0111" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(55, 6);-- 7
			when "1000" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(56, 6);-- 8
			when "1001" => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(57, 6);-- 9
			when others => score_ones_char_rom <= CONV_STD_LOGIC_VECTOR(48, 6);-- 0
		end case;
		
		case game_view is
			when "010" => level <= CONV_STD_LOGIC_VECTOR(49, 6); -- lvl 1
			when "011" => level <= CONV_STD_LOGIC_VECTOR(50, 6); -- lvl 2
			when "100" => level <= CONV_STD_LOGIC_VECTOR(51, 6); -- lvl 3
			when "101" => level <= CONV_STD_LOGIC_VECTOR(52, 6); -- lvl 4
			when others => level <= CONV_STD_LOGIC_VECTOR(49, 6); -- lvl 1
		end case;
	end process;
	
	
	screen_display: process(pixel_row,pixel_col,sw0,game_view)
	begin
			if(game_view = "000") then	--Start Menu
				--TANK WARS
				
				--T
				if (pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--N
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(14, 6);
				--K
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(11, 6);
				--W
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(23, 6);
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--R
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);
				--S
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
				
				--GAME	
				--G
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(7, 6);
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--M
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(13, 6);
				--E
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--PRACTICE
				--P
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(16, 6);
				--R
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--C
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(3, 6);
				--T
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
				--I
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(9, 6);
				--C
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(368, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(3, 6);
				--E
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(368, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
					
				--GAME mode selected left *
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(240, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) and
					(sw0 = '1') then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(42, 6);
				--GAME mode selected right *
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) and
					(sw0 = '1') then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(42, 6);
				--PRACTICE mode selected left *
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(240, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) and
					(sw0 = '0') then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(42, 6);
				--PRACTICE mode selected right *
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(367, 10)) and
					(sw0 = '0') then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(42, 6);	
				-- GROUP 9: SAVI & IRA
				--G
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(240, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(7, 6);
				--R
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(240, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);
				--O
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(15, 6);
				--U
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(21, 6);
				--P
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(16, 6);
				--9
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(57, 6);
				--S
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(368, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(368, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--V
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(22, 6);
				--I
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(9, 6);
				--&
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(432, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(38, 6);
				--I
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(9, 6);
				--R
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(496, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);	
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(496, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(512, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(480, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);									
				end if;	
			--end if;	
			elsif(game_view = "001")then --Practice mode
				--P
				if (pixel_col >= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(16, 6);
				--R
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--C
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(3, 6);
				--T
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
				--I
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(368, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(9, 6);
				--C
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(368, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(3, 6);
				--E
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				-- TIME LEFT
				--T--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(144, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(160, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
				--I--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(160, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(176, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(9, 6);
				--M--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(176, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(13, 6);
				--E--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(208, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--L--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(240, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
				--E--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(240, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--F--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(6, 6);
				--T--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
				--time_tens--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= time_tens_char_rom;
				--time_ones--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= time_ones_char_rom;
				-- SCORE
				--S--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
				--C--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(3, 6);
				--O--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(432, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(15, 6);
				--R--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(432, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);
				--E--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--score_tens--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(496, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(512, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= score_tens_char_rom;
				--score_ones--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(512, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(528, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= score_ones_char_rom;
				end if;	
			--end if;
			elsif((game_view = "010")or(game_view = "011")or(game_view = "100")or(game_view = "101"))then --Game mode level 1,2,3,4
				--GAME	
				--G
				if (pixel_col >= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(7, 6);
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--M
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(13, 6);
				--E
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(479, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);		
				--LEVEL
				--L
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(16, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
				--E
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(16, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--V
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(48, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(22, 6);
				--E
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(48, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(64, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--L
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(64, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(80, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
				--level--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(96, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(112, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= level;
				-- TANKS LEFT
				--T--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(16, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
				--A--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(16, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--N--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(48, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(14, 6);
				--K--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(48, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(64, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(11, 6);
				--S--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(64, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(80, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
				--L--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(96, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(112, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
				--E--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(112, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(128, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--F--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(128, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(144, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(6, 6);
				--T--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(144, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(160, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
				--tanks_left--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(176, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= tanks_left_char_rom;
				
				-- TIME LEFT
				--T--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(144, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(160, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
				--I--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(160, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(176, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(9, 6);
				--M--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(176, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(13, 6);
				--E--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(208, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--L--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(240, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
				--E--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(240, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--F--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(6, 6);
				--T--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(272, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
				--time_tens--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= time_tens_char_rom;
				--time_ones--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= time_ones_char_rom;
				-- SCORE
				--S--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(368, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
				--C--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(3, 6);
				--O--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(15, 6);
				--R--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(432, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);
				--E--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(432, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--score_tens--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= score_tens_char_rom;
				--score_ones--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(496, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= score_ones_char_rom;
				end if;
			--end if;
			elsif (game_view = "110")then--Game over screen
				--GAME OVER
				
				--G
				if (pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(7, 6);
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--M
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(13, 6);
				--E
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--O
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(15, 6);
				--V
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(22, 6);
				--E
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--R
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);	
				-- SCORE
				--S--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
				--C--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(3, 6);
				--O--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(15, 6);
				--R--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);
				--E--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(368, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--score_tens--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= score_tens_char_rom;
				--score_ones--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= score_ones_char_rom;
				end if;
			--end if;
			elsif (game_view = "111")then--Game won screen
				--GAME WON
				
				--G
				if (pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(7, 6);
				--A
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
				--M
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(13, 6);
				--E
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--W
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(23, 6);
				--O
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(15, 6);
				--N
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
					font_row <= pixel_row(4 downto 2);
					font_col <= pixel_col(4 downto 2);
					character_address <= CONV_STD_LOGIC_VECTOR(14, 6);
				-- SCORE
				--S--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
				--C--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(3, 6);
				--O--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(15, 6);
				--R--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);
				--E--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(368, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
				--score_tens--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= score_tens_char_rom;
				--score_ones--
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(335, 10)) then
					font_row <= pixel_row(3 downto 1);
					font_col <= pixel_col(3 downto 1);
					character_address <= score_ones_char_rom;
				end if;
			end if;
			
--			if((game_view = "010")or(game_view = "011")or(game_view = "100")or(game_view = "101")) then -- if any game level
--				--LEVEL
--				--L
--				if (pixel_col >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(16, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
--				--E
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(16, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
--				--V
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(48, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(22, 6);
--				--E
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(48, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(64, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
--				--L
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(64, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(80, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
--				-- TANKS LEFT
--				--T--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(16, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
--				--A--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(16, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
--				--N--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(48, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(14, 6);
--				--K--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(48, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(64, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(11, 6);
--				--S--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(64, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(80, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
--				--L--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(96, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(112, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
--				--E--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(112, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(128, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
--				--F--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(128, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(144, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(6, 6);
--				--T--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(144, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(160, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(32, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(47, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
--				-- TIME LEFT
--				--T--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(144, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(160, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
--				--I--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(160, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(176, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(9, 6);
--				--M--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(176, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(192, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(13, 6);
--				--E--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(208, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
--				--L--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(240, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
--				--E--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(240, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
--				--F--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(272, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(6, 6);
--				--T--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(272, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
--				end if;	
--			end if;
			
--			if((game_view = "001")or(game_view = "010")or(game_view = "011")or(game_view = "100")or(game_view = "101")) then -- if any game level or practice mode
--				-- TIME LEFT
--				--T--
--				if (pixel_col >= CONV_STD_LOGIC_VECTOR(144, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(160, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
--				--I--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(160, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(176, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(9, 6);
--				--M--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(176, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(192, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(13, 6);
--				--E--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(208, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
--				--L--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(240, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(12, 6);
--				--E--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(240, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
--				--F--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(272, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(6, 6);
--				--T--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(272, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(20, 6);
--				-- SCORE
--				--S--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(368, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
--				--C--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(400, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(3, 6);
--				--O--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(400, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(15, 6);
--				--R--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(416, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(432, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(18, 6);
--				--E--
--				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(432, 10)) and
--					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
--					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
--					(pixel_row <= CONV_STD_LOGIC_VECTOR(15, 10)) then
--					font_row <= pixel_row(3 downto 1);
--					font_col <= pixel_col(3 downto 1);
--					character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
--				end if;
--				if (s_paused = '1')then
--					--P
--					if (pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
--						(pixel_col <= CONV_STD_LOGIC_VECTOR(224, 10)) and
--						(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
--						(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
--						font_row <= pixel_row(4 downto 2);
--						font_col <= pixel_col(4 downto 2);
--						character_address <= CONV_STD_LOGIC_VECTOR(32, 6);
--					--A
--					elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
--						(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
--						(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
--						(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
--						font_row <= pixel_row(4 downto 2);
--						font_col <= pixel_col(4 downto 2);
--						character_address <= CONV_STD_LOGIC_VECTOR(1, 6);
--					--U
--					elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
--						(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
--						(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
--						(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
--						font_row <= pixel_row(4 downto 2);
--						font_col <= pixel_col(4 downto 2);
--						character_address <= CONV_STD_LOGIC_VECTOR(21, 6);
--					--S
--					elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
--						(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
--						(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
--						(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
--						font_row <= pixel_row(4 downto 2);
--						font_col <= pixel_col(4 downto 2);
--						character_address <= CONV_STD_LOGIC_VECTOR(19, 6);
--					--E
--					elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
--						(pixel_col <= CONV_STD_LOGIC_VECTOR(352, 10)) and
--						(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
--						(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
--						font_row <= pixel_row(4 downto 2);
--						font_col <= pixel_col(4 downto 2);
--						character_address <= CONV_STD_LOGIC_VECTOR(5, 6);
--					--D
--					elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
--						(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
--						(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
--						(pixel_row <= CONV_STD_LOGIC_VECTOR(158, 10)) then
--						font_row <= pixel_row(4 downto 2);
--						font_col <= pixel_col(4 downto 2);
--						character_address <= CONV_STD_LOGIC_VECTOR(4, 6);
--					end if;	
--				end if;
			--end if;
		o_character_address <= character_address;
		o_font_row <= font_row;
		o_font_col	<= font_col;
	end process;

end behaviour;	

