library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY clk_divider IS
	PORT(	clock: IN	STD_LOGIC;
			clock_25Mhz	: OUT	STD_LOGIC);
END clk_divider;
ARCHITECTURE bhv OF clk_divider IS
BEGIN
process(clock)
variable i : integer := 0;
BEGIN
	if(rising_edge(clock)) then
		if(i = 1) then
			clock_25Mhz <= '1';
			i := 0;
		else
			clock_25Mhz <= '0';
			i := i + 1;
		end if;
	end if;
end process;
end bhv;