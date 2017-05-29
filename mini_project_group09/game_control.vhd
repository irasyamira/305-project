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
			reset_timer: out std_logic;
			tank2_on: in std_logic;
			sec_ones, sec_tens: in std_logic_vector(3 downto 0);
			score_tens: in std_logic_vector(3 downto 0);
			o_game_over: in std_logic;
			tank3_on: in std_logic;
			tank4_on: in std_logic);
end game_control;

architecture bhv of game_control is

type state_type is (menu, practice, lvl1, lvl2, lvl3, lvl4, game_won, game_over);
signal s_red  		 : std_logic_vector(3 downto 0) := "0000";
signal s_green		 : std_logic_vector(3 downto 0) := "0000";
signal s_blue 		 : std_logic_vector(3 downto 0) := "0000";
signal s_game_mode		 : std_logic_vector(2 downto 0) := "000";
signal current_s, next_s: state_type;
signal s_reset_timer: std_logic := '0';
signal s_score_ones, s_score_tens : std_logic_vector(3 downto 0):= "0000";
signal s_game_over: std_logic:= '0';
begin
s_score_ones <= score_ones;
s_score_tens <= score_tens;
s_game_over <= o_game_over;
process(clk)
begin
	if (rising_edge(clk)) then
		current_s <= next_s;
	end if;
end process;

process (current_s, bt_select, bt_menu, sw0, s_score_ones, s_score_tens, s_game_over, sec_ones, sec_tens)
begin

	case current_s is
		when menu =>
			s_game_mode <= "000";
			if bt_select = '0' then
				if sw0 = '0' then
					s_reset_timer <= '1';
					next_s <= practice;
				else
					s_reset_timer <= '1';
					next_s <= lvl1;
				end if;
			else
				next_s <= menu;
			end if;
		when practice =>
			s_game_mode <= "001";
			s_reset_timer <= '0';
			if bt_menu = '0' then
				next_s <= menu;
			elsif (sec_ones = "0000" and sec_tens = "0000") then
				next_s <= game_over;
			else
				next_s <= practice;
			end if;
		when lvl1 =>
			s_game_mode <= "010";
			s_reset_timer <= '0';
			if bt_menu = '0' then
				next_s <= menu;
			elsif (sec_ones = "0000" and sec_tens = "0000") then
				next_s <= game_over;
			elsif (s_score_ones = "0011") then
				s_reset_timer <= '1';
				next_s <= lvl2;
			else
				next_s <= lvl1;
			end if;
		when lvl2 =>
			s_game_mode <= "011";
			s_reset_timer <= '0';
			if bt_menu = '0' then
				next_s <= menu;
			elsif (sec_ones = "0000" and sec_tens = "0000") then
				next_s <= game_over;
			elsif (s_score_ones = "0111") then
				s_reset_timer <= '1';
				next_s <= lvl3;
			else
				next_s <= lvl2;
			end if;
		when lvl3 =>
			s_game_mode <= "100";
			s_reset_timer <= '0';
			if bt_menu = '0' then
				next_s <= menu;
			elsif (sec_ones = "0000" and sec_tens = "0000") then
				next_s <= game_over;
			elsif s_game_over = '1' then
				next_s <= game_over;
			elsif (s_score_ones = "0010" and s_score_tens = "0001") then
				s_reset_timer <= '1';
				next_s <= lvl4;
			else
				next_s <= lvl3;
			end if;
		when lvl4 =>
			s_game_mode <= "101";
			s_reset_timer <= '0';	
			if bt_menu = '0' then
				next_s <= menu;
			elsif (sec_ones = "0000" and sec_tens = "0000") then
				next_s <= game_over;
			elsif s_game_over = '1' then
				next_s <= game_over;				
			elsif (s_score_ones = "1000" and s_score_tens = "0001") then
				s_reset_timer <= '1';
				next_s <= game_won;
			else
				next_s <= lvl4;
			end if;
		when game_won =>
			s_game_mode <= "111";
			if bt_menu = '0' then
				next_s <= menu;
			else 
				next_s <= game_won;
			end if;
		when game_over =>
		s_game_mode <= "110";
			if bt_menu = '0' then
				next_s <= menu;
			else 
				next_s <= game_over;
			end if;
	end case;
	
end process;
game_mode <= s_game_mode;
reset_timer <= s_reset_timer;
process(bullet_on, s_game_mode, player_on, tank_on, tank2_on, tank3_on, rom_mux, pixel_row, tank4_on)
begin

	if rom_mux = '1' then -- rendering text
			s_red <= "1111";
			s_green <= "1111";
			s_blue <= "1111";
	elsif (bullet_on = '1' and s_game_mode /= "000" and s_game_mode /= "110" and s_game_mode /= "111") then -- rendering bullet
			s_red <= "1111";
			s_green <= "1111";
			s_blue <= "1111";
	elsif (player_on = '1' and s_game_mode /= "000"  and s_game_mode /= "110" and s_game_mode /= "111") then -- rendering player
			s_red <= "0000";
			s_green <= "1100";
			s_blue <= "1110";
	elsif (tank_on= '1' and s_game_mode /= "000"  and s_game_mode /= "110" and s_game_mode /= "111") then -- rendering tank
			s_red <= "1100";
			s_green <= "1110";
			s_blue <= "0000";
	elsif (tank2_on= '1' and (s_game_mode = "101" or s_game_mode = "011")) then -- rendering tank 2
			s_red <= "1000";
			s_green <= "1110";
			s_blue <= "1100";
	else -- when rendering back ground
			s_red <= '0' & pixel_row(8 downto 6);
			s_green <= "0000";
			s_blue <= '0' & pixel_row(8 downto 6);
	end if;
--	if rom_mux = '1' then -- rendering text
--			s_red <= "1111";
--			s_green <= "1111";
--			s_blue <= "1111";
--	elsif (bullet_on = '1' and s_game_mode /= "000" and s_game_mode /= "110" and s_game_mode /= "111") then -- rendering bullet
--			s_red <= "1111";
--			s_green <= "1111";
--			s_blue <= "1111";
--	elsif (player_on = '1' and s_game_mode /= "000"  and s_game_mode /= "110" and s_game_mode /= "111") then -- rendering player
--			s_red <= "0000";
--			s_green <= "1100";
--			s_blue <= "1110";
--	elsif tank_on = '1' and (s_game_mode = "011"  or s_game_mode = "101") then -- rendering tank
--			s_red <= "1100";
--			s_green <= "1110";
--			s_blue <= "0000";
--	elsif (tank2_on = '1' and (s_game_mode = "101" or s_game_mode = "011")) then -- rendering tank 2
--			s_red <= "1000";
--			s_green <= "1110";
--			s_blue <= "1100";
--	elsif (tank4_on = '1' and s_game_mode = "100") then -- rendering tank 3
--			s_red <= "1100";
--			s_green <= "1110";
--			s_blue <= "1100";
--	elsif tank4_on = '1' and (s_game_mode = "001" or s_game_mode = "010") then -- rendering tank 4
--			s_red <= "1110";
--			s_green <= "1000";
--			s_blue <= "1000";	
--	else -- when rendering back ground
--			s_red <= '0' & pixel_row(8 downto 6);
--			s_green <= "0000";
--			s_blue <= '0' & pixel_row(8 downto 6);
--	end if;
	
end process;
red_data <= s_red;
green_data <= s_green;
blue_data <= s_blue;

end bhv;