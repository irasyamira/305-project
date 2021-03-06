library ieee;
use ieee.std_logic_1164.all;

entity lfsr is
  port (				clk : in std_logic;
			    output   : out std_logic_vector (10 downto 0));
end entity;

architecture behaviour of lfsr is
	signal ran_num : std_logic_vector (10 downto 0) := "00101010101";
begin
	process (clk) 
	begin
		if rising_edge(clk) then
			ran_num <= ran_num(10) & ran_num(4) & ((ran_num(5) xor ran_num(1)) & (ran_num(5) xor ran_num(1)) 
			& ran_num(5) & (ran_num(3) xor ran_num(8)) & ran_num(3) & ran_num(2) & not(ran_num(3) xor ran_num(6)) & not(ran_num(0)) & ran_num(7));
		 end if;
    end process;
	
    output <= ran_num;
end behaviour;



