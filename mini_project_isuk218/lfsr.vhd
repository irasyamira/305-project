library ieee;
use ieee.std_logic_1164.all;

entity lfsr is
	port (enable, clk :in  std_logic;
			rand   :out std_logic_vector (7 downto 0));
end entity;

architecture bhv of lfsr is
	signal count           :std_logic_vector (7 downto 0);
	signal linear_feedback :std_logic;

begin
linear_feedback <= not(count(7) xor count(3));

process (clk) 
begin
	if (rising_edge(clk)) then
		if (enable = '1') then
			count <= (count(6) & count(5) & count(4) & count(3) 
						& count(2) & count(1) & count(0) & 
						linear_feedback);
		end if;
	end if;
end process;
rand <= count;
end architecture;