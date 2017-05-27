library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity timer is
	port (clk25 : in std_logic;
		  sec_ones : out std_logic_vector(3 downto 0);
		  sec_tens : out std_logic_vector(3 downto 0);
		  reset, enable : in std_logic);
end timer;

architecture bhv of timer is

signal s_sec_ones: std_logic_vector(3 downto 0) := "1001";
signal s_sec_tens: std_logic_vector(3 downto 0) := "1001";
signal count : integer := 1;
signal clk : std_logic := '0';

begin


--clk generation (for 50 MHz clock this generates 1 Hz clock)
process(clk25)
begin
	if (clk25'event and clk25 = '1') then
		count <= count + 1;
		if (count = 25000000) then
			clk <= not clk;
			count <= 1;
		end if;
	end if;
end process;

--period of clk is 1 second.
process(reset, clk, s_sec_ones, s_sec_tens)   
begin

if reset = '1' then
	s_sec_ones <= "1001";
	s_sec_tens <= "1001";
else 
	if (clk'event and clk='1') then
		if enable = '1' then
			if reset = '1' then
				s_sec_ones <= "1001";
				s_sec_tens <= "1001";
				s_sec_ones <= s_sec_ones - 1;
				if (s_sec_ones = "0000") then
					s_sec_ones <= "1001";
					s_sec_tens <= s_sec_tens - 1;
					if (s_sec_tens = "0000") then
						s_sec_tens <= "1001";
					end if;	
				end if;	
			elsif reset = '0' then
				s_sec_ones <= s_sec_ones - 1;
				if (s_sec_ones = "0000") then
					s_sec_ones <= "1001";
					s_sec_tens <= s_sec_tens - 1;
					if (s_sec_tens = "0000") then
						s_sec_tens <= "1001";
					end if;
				end if;
			end if;
		else
			s_sec_ones <= s_sec_ones;
			s_sec_tens <= s_sec_tens;
		end if;
	end if;
end if;
sec_ones <= s_sec_ones;
sec_tens <= s_sec_tens;
end process;
end bhv;