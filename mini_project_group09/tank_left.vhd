library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;


entity tank_left is
	port( signal o_tank_left: out std_logic_vector(3 downto 0);
			signal score_ones: in std_logic_vector(3 downto 0);
			signal score_tens: in std_logic_vector(3 downto 0));
			
end tank_left;

architecture bhv of tank_left is

signal s_tank_left: std_logic_vector(3 downto 0) := "0000";
signal s_score_ones: std_logic_vector(3 downto 0) := "0000";
signal s_score_tens: std_logic_vector(3 downto 0) := "0000";

begin

s_score_ones <= score_ones;
s_score_tens <= score_tens;

process(s_score_ones, s_score_tens, s_tank_left)
begin
	
	--00
	if s_score_ones = "0000" and s_score_tens = "0000" then
		s_tank_left <= "0011"; --3 (lvl1)
	--01
	elsif s_score_ones = "0001" and s_score_tens = "0000" then
		s_tank_left <= "0010"; --2
	--02
	elsif s_score_ones = "0010" and s_score_tens = "0000" then
		s_tank_left <= "0001"; --1
	--03
	elsif s_score_ones = "0011" and s_score_tens = "0000" then
		s_tank_left <= "0100"; --4 (lvl2)
	--04
	elsif s_score_ones = "0100" and s_score_tens = "0000" then
		s_tank_left <= "0011"; --3
	--05
	elsif s_score_ones = "0101" and s_score_tens = "0000" then
		s_tank_left <= "0010"; --2
	--06
	elsif s_score_ones = "0110" and s_score_tens = "0000" then
		s_tank_left <= "0001"; --1
	--07
	elsif s_score_ones = "0111" and s_score_tens = "0000" then
		s_tank_left <= "0101"; --5 (lvl3)
	--08 
	elsif s_score_ones = "1000" and s_score_tens = "0000" then
		s_tank_left <= "0100"; --4
	--09
	elsif s_score_ones = "1001" and s_score_tens = "0000" then
		s_tank_left <= "0011"; --3
	--10
	elsif s_score_ones = "0000" and s_score_tens = "0001" then
		s_tank_left <= "0010"; --2
	--11
	elsif s_score_ones = "0001" and s_score_tens = "0001" then
		s_tank_left <= "0001"; --1
	--12
	elsif s_score_ones = "0010" and s_score_tens = "0001" then
		s_tank_left <= "0110"; --6 (lvl4)
	--13
	elsif s_score_ones = "0011" and s_score_tens = "0001" then
		s_tank_left <= "0101"; --5
	--14
	elsif s_score_ones = "0100" and s_score_tens = "0001" then
		s_tank_left <= "0100"; --4
	--15
	elsif s_score_ones = "0101" and s_score_tens = "0001" then
		s_tank_left <= "0101"; --3
	--16
	elsif s_score_ones = "0110" and s_score_tens = "0001" then
		s_tank_left <= "0010"; --2
	--17
	elsif s_score_ones = "0111" and s_score_tens = "0001" then
		s_tank_left <= "0001"; --1
	--18
	elsif s_score_ones = "1000" and s_score_tens = "0001" then
		s_tank_left <= "0000"; --0
	end if;

	o_tank_left <= s_tank_left;
end process;
end architecture;
		