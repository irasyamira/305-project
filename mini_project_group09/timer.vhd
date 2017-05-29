library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity timer is
	port (clk25 : in std_logic;
		  sec_ones : out std_logic_vector(3 downto 0);
		  sec_tens : out std_logic_vector(3 downto 0);
		  reset, enable : in std_logic;
		  game_mode: in std_logic_vector(2 downto 0);
		  pause: in std_logic);
end timer;

architecture bhv of timer is

signal s_sec_ones: std_logic_vector(3 downto 0) := "1001";
signal s_sec_tens: std_logic_vector(3 downto 0) := "1001";
signal count : integer := 1;
signal clk : std_logic := '0';
signal s_reset, s_enable: std_logic:= '0';
signal s_pause: std_logic:= '0';

begin
s_reset <= reset;
s_enable <= enable;
s_pause <= pause;

--clk generation (for 25 MHz clock this generates 1 Hz clock)
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

--period of clk is 1 second.
process(s_reset, clk, s_sec_ones, s_sec_tens, game_mode, s_pause)   
begin

	if s_reset = '1' then
		--s_sec_ones <= "1000";
		--s_sec_tens <= "1000";
--		s_sec_ones <= s_sec_ones - 1;
--		if (s_sec_ones = "0000") then
--			s_sec_ones <= "1001";
--			s_sec_tens <= s_sec_tens - 1;
--			if (s_sec_tens = "0000") then
--				s_sec_tens <= "1001";
--			end if;
--		end if;

			--if game_mode = "000" then
				--s_sec_ones <= "0000"; --60 seconds
				--s_sec_tens <= "0110";
			if game_mode = "010" then
				s_sec_ones <= "0101"; --55
				s_sec_tens <= "0101";
			elsif game_mode = "011" then
				s_sec_ones <= "0000"; --50
				s_sec_tens <= "0101";
			elsif game_mode = "100" then
				s_sec_ones <= "0101"; --45
				s_sec_tens <= "0100";
			elsif game_mode = "101" then --40
				s_sec_ones <= "0000";
				s_sec_tens <= "0100";
			else
				s_sec_ones <= "0000"; --99
				s_sec_tens <= "0110";		
			end if;
	else
		if (clk'event and clk='1') then
		
			if s_pause = '0' then
				s_sec_ones <= s_sec_ones;
				s_sec_tens <= s_sec_tens;
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

