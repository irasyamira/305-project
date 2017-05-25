library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity game_control is
   port	(clk, rom_mux, bt2, bt1, sw0	: in std_logic;
			tank_on, player_on, bullet_on: in std_logic;
			pixel_row: in std_logic_vector (10 downto 0);
			game_mode							: out std_logic_vector(2 downto 0);
			red_data, green_data, blue_data		: out std_logic_vector(3 downto 0));
end game_control;

architecture bhv of game_control is

signal s_red  		 : std_logic_vector(3 downto 0) := "0000";
signal s_green		 : std_logic_vector(3 downto 0) := "0000";
signal s_blue 		 : std_logic_vector(3 downto 0) := "0000";
signal s_game_mode		 : std_logic_vector(2 downto 0) := "000";

begin
process(rom_mux, clk)
begin
if rising_edge(clk) then
		if bt1 = '0' then
			s_game_mode <= "000"; -- back to menu screen
		end if;

		if bt2 = '0' then
			if sw0 = '0' then
				s_game_mode <= "001"; -- practice screen
			else
				s_game_mode <= "010"; -- game screen
			end if;
		end if;
	end if;
	
	IF rom_mux = '1' THEN -- rendering text
			s_red <= "1111";
			s_green <= "1111";
			s_blue <= "1111";
	elsif (bullet_on = '1') and s_game_mode /= "000" THEN -- rendering bullet
			s_red <= "0111";
			s_green <= "1000";
			s_blue <= "0000";
	ELSIF (player_on = '1') and (s_game_mode /= "000") THEN -- rendering player and tank
			s_red <= "0000";
			s_green <= "1100";
			s_blue <= "0000";
	ELSIF (tank_on= '1') and (s_game_mode /= "000") THEN -- rendering player and tank
			s_red <= "1000";
			s_green <= "0000";
			s_blue <= "0000";
	ELSE -- when rendering back ground
			s_red <= "0000";
			s_green <= "0000";
			s_blue <= "1100";
	end if;
	
end process;

red_data <= s_red;
green_data <= s_green;
blue_data <= s_blue;
game_mode <= s_game_mode;

end bhv;