library ieee;
use ieee.std_logic_1164.all;

entity lfsr is
  port (enable, clk : in std_logic;
			    cout   : out std_logic_vector (10 downto 0));
end entity;

architecture behaviour of lfsr is
	signal ran_num : std_logic_vector (10 downto 0) := "10100101110";--"01100101010";
begin
	process (clk) 
	begin
	if rising_edge(clk) then
		if enable = '1' then
                ran_num <= '0' & ran_num(8) & (not(ran_num(7) xor ran_num(3)) & not(ran_num(5) xor ran_num(1)) & ran_num(5)
						  & not(ran_num(3) xor ran_num(8)) & ran_num(3) & ran_num(2) & (ran_num(4) xor ran_num(6))
						  & ran_num(0) & ran_num(9));
		end if;
    end if;
    end process;
	
    cout <= ran_num;
end behaviour;