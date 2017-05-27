library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity game_control is
   port	(clk, rom_mux, bt_select, bt_menu, sw0	: in std_logic;
			tank_on, player_on, bullet_on: in std_logic;
			pixel_row: in std_logic_vector (10 downto 0);
			game_mode							: out std_logic_vector(2 downto 0);
			red_data, green_data, blue_data		: out std_logic_vector(3 downto 0);
			score_ones: in std_logic_vector(3 downto 0);
			reset_tank: out std_logic;
			tank2_on: in std_logic);
end game_control;

architecture bhv of game_control is

type state_type is (menu, practice, lvl1, lvl2, lvl3, lvl4);
signal s_red  		 : std_logic_vector(3 downto 0) := "0000";
signal s_green		 : std_logic_vector(3 downto 0) := "0000";
signal s_blue 		 : std_logic_vector(3 downto 0) := "0000";
signal s_game_mode		 : std_logic_vector(2 downto 0) := "000";
signal current_s, next_s: state_type;

begin
process(clk)
begin
	if (rising_edge(clk)) then
		current_s <= next_s;
	end if;
end process;

process (current_s, bt_select, bt_menu, sw0, score_ones)
begin

	case current_s is
		when menu =>
			s_game_mode <= "000";
			reset_tank <= '1';
			if bt_select = '0' then
				if sw0 = '0' then
					next_s <= practice; -- practice screen
				else
					next_s <= lvl1; -- game screen
				end if;
			else
				next_s <= menu;
			end if;
		when practice =>
			s_game_mode <= "001";
			if bt_menu = '0' then
				next_s <= menu;
			else
				next_s <= practice;
			end if;
		when lvl1 =>
			s_game_mode <= "010";
			if bt_menu = '0' then
				next_s <= menu;
			elsif score_ones > "0010" then
				next_s <= lvl2;
			else 
				next_s <= lvl1;
			end if;
		when lvl2 =>
			s_game_mode <= "011";
			if bt_menu = '0' then
				next_s <= menu;
			elsif score_ones > "0100" then
				next_s <= lvl3;
			else
				next_s <= lvl2;
			end if;
		when lvl3 =>
			s_game_mode <= "100";
			if bt_menu = '0' then
				next_s <= menu;
			elsif score_ones > "0110" then
				next_s <= lvl4;
			else
				next_s <= lvl3;
			end if;
		when lvl4 =>
			s_game_mode <= "101";
			if bt_menu = '0' then
				next_s <= menu;
			else
				next_s <= lvl4;
			end if;
	end case;
	
end process;
game_mode <= s_game_mode;

process(bullet_on, s_game_mode, player_on, tank_on, rom_mux, pixel_row)
begin
	if rom_mux = '1' then -- rendering text
			s_red <= "1111";
			s_green <= "1111";
			s_blue <= "1111";
	elsif (bullet_on = '1') and s_game_mode /= "000" then -- rendering bullet
			s_red <= "0111";
			s_green <= "1000";
			s_blue <= "0000";
	elsif (player_on = '1') and (s_game_mode /= "000") then -- rendering player
			s_red <= "0000";
			s_green <= "1100";
			s_blue <= "1110";
	elsif (tank_on= '1') and (s_game_mode /= "000") then -- rendering tank(black)
			s_red <= "0000";
			s_green <= "0000";
			s_blue <= "0000";
	elsif (tank2_on= '1') and (s_game_mode = "101") then -- rendering tank 2
			s_red <= "1000";
			s_green <= "0000";
			s_blue <= "0000";
	else -- when rendering back ground
			s_red <= "0000";
			s_green <= "0000";
			s_blue <= "1000";
	end if;
	
end process;
red_data <= s_red;
green_data <= s_green;
blue_data <= s_blue;

end bhv;