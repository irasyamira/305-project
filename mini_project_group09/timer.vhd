library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity timer is
	port (clk25 : in std_logic;
		  sec_ones : out std_logic_vector(3 downto 0);
		  sec_tens : out std_logic_vector(3 downto 0);
		  reset:in std_logic;
		  game_mode: in std_logic_vector(2 downto 0);
		  pause: in std_logic);
end timer;

architecture bhv of timer is

signal s_sec_ones: std_logic_vector(3 downto 0) := "1001";
signal s_sec_tens: std_logic_vector(3 downto 0) := "1001";
signal count : integer := 1;
signal clk : std_logic := '0';
signal s_reset:std_logic:= '0';
signal s_pause: std_logic:= '0';

begin
s_reset <= reset;
s_pause <= pause;

-- Clk generation (for 25 MHz clock this generates 1 Hz clock)
process(clk25)
begin
	if (clk25'event and clk25 = '1') then
		count <= count + 1;
		if (count = 12500000) then
			clk <= not clk;
			count <= 1;
		end if;
	end if;
end process;

-- Period of clk is 1 second.
process(s_reset, clk, s_sec_ones, s_sec_tens, game_mode, s_pause)   
begin

	if s_reset = '1' then

			-- Level 1 (55s)
			if game_mode = "010" then
				s_sec_ones <= "0101"; 
				s_sec_tens <= "0101";
				
			-- Level 2 (50s)
			elsif game_mode = "011" then
				s_sec_ones <= "0000"; 
				s_sec_tens <= "0101";
			
			-- Level 3 (45s)
			elsif game_mode = "100" then
				s_sec_ones <= "0101";
				s_sec_tens <= "0100";
				
			-- Level 4 (40s)
			elsif game_mode = "101" then
				s_sec_ones <= "0000";
				s_sec_tens <= "0100";
				
			-- Resets to 99	
			else
				s_sec_ones <= "0000";
				s_sec_tens <= "0110";		
			end if;
	else
		if (clk'event and clk='1') then
			
			-- Pause will freeze the timer at its current value
			if s_pause = '0' then
				s_sec_ones <= s_sec_ones;
				s_sec_tens <= s_sec_tens;
				
			-- Decrement at every clk cycle				
			else
		
			s_sec_ones <= s_sec_ones - 1;
				if (s_sec_ones = "0000") then
					s_sec_ones <= "1001";
					s_sec_tens <= s_sec_tens - 1;
					if (s_sec_tens = "0000") then
						s_sec_tens <= "1001";
					end if;
				end if;
			end if;
		end if;
	end if;
sec_ones <= s_sec_ones;
sec_tens <= s_sec_tens;
end process;
end bhv;

