library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

--50MHz to 25MHz 
entity clk_div is
port(
	Clk: in bit;
	ClkDiv: out bit); 
end clk_div;

architecture behaviour of clk_div is
	signal t_clkdiv:	bit;
begin    
	process (Clk)
	begin
		if (Clk'event and Clk = '1') then
					t_clkdiv <= NOT t_clkdiv;
		end if;
	end process;
	
	ClkDiv <= t_clkdiv;
	
end behaviour;	
