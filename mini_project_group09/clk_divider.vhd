library ieee;
use  ieee.std_logic_1164.all;
use  ieee.std_logic_arith.all;
use  ieee.std_logic_unsigned.all;

entity clk_divider is
	port(	clock: in	std_logic; -- Takes the clk input of 50Mhz
			clock_25mhz	: out	std_logic);
end clk_divider;

architecture bhv of clk_divider is
begin
process(clock)
variable i : integer := 0;
begin
	if (rising_edge(clock)) then
	-- Halves the clock input by alternating the flagging of variable in every 2 ticks
		if (i = 1) then
			clock_25mhz <= '1';
			i := 0;
		else
			clock_25mhz <= '0';
			i := i + 1;
		end if;
	end if;
end process;
end bhv;