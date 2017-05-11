library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity screen_text is
	
	PORT(
		  
		  
		  signal character_address			: out std_logic_vector(5 downto 0);
		  signal font_row, font_col		: out std_logic_vector(2 downto 0));
end entity;

architecture behaviour of screen_text is

end behaviour;	

