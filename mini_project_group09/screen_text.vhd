library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity screen_text is
	
	PORT(pixel_row, pixel_col : in std_logic_vector(10 downto 0);
		  sw0 					  : in std_logic;
		  game_view 			  : in std_logic_vector (2 downto 0);
		  character_address	  : out std_logic_vector(5 downto 0);
		  font_row, font_col	  : out std_logic_vector(2 downto 0));
end entity;

architecture behaviour of screen_text is
	 
begin	
	process(pixel_row,pixel_col,sw0,game_view)
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
				end if;	
			
			elsif(game_view = "010")then --Game mode level 1
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
				end if;
			end if;
	end process;

end behaviour;	

