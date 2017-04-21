library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

entity tank is
	port (signal pixel_row, pixel_column  : in std_logic_vector(10 downto 0);
			signal game_mode				: in std_logic_vector(2 downto 0);
			signal horiz_sync, vert_sync	: in std_logic;
			signal left_button			: in std_logic;
			signal rand						: in std_logic_vector(7 downto 0);
			signal mouse_col				: in std_logic_vector(9 downto 0);
			signal RGB 						: out std_logic_vector(2 downto 0));
			--signal score					: out std_logic_vector(7 downto 0));
end tank;

architecture bhv of tank is
	signal tank_size: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(5,10); -- dont need 2 diff tank size bcs they r the same lol
	signal tank1_Y_pos: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(450,10);//
	signal tank1_X_pos: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(240,10);//
	signal tank1_speed: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(240,10);
	signal tank2_Y_pos: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(450,10);
	signal tank2_X_pos: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(240,10);
	signal tank2_speed: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(240,10);	
	signal bullet_size: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(5,10);
	signal bullet_Y_pos: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(450,10);
	signal bullet_X_pos: std_logic_vector(9 downto 0); -- := conv_std_logic_vector(240,10);
	signal bullet_fired: std_logic;
	signal tank1_on: std_logic;
	signal tank2_on: std_logic;
	signal bullet_on: std_logic;
begin

tank_size <= CONV_STD_LOGIC_VECTOR(5,11);
bullet_size <= CONV_STD_LOGIC_VECTOR(4,11);
tank1_Y_pos <= CONV_STD_LOGIC_VECTOR(100,11);
tank2_Y_pos <= CONV_STD_LOGIC_VECTOR(380, 11);

RGB(0) <=  '1' AND NOT tank2_on AND NOT bullet_on;
RGB(1) <=  '1' AND NOT tank1_on AND NOT bullet_on;
RGB(2) <=  '1' AND NOT tank1_on AND NOT tank2_on;

	create_tank1: process(tank1_X_pos, tank1_Y_pos, pixel_column, pixel_row)
	begin
		if ('0' & tank1_X_pos >= pixel_column + tank_size) AND --left boundary
			(tank1_X_pos + tank_size <= '0' & pixel_column) AND --right boundary
			('0' & tank1_Y_pos >= pixel_row + tank_size) AND
			(tank1_Y_pos + tank_size <= '0' & pixel_row)
		then
			tank1_on <= '1';
		else
			tank1_on <= '0';
		end if;
	end process create_tank1;
	
	create_tank2: process(tank2_X_pos, tank2_Y_pos, pixel_column, pixel_row)
	begin
		if ('0' & tank2_X_pos >= pixel_column + tank_size) AND --left boundary
			(tank2_X_pos + tank_size <= '0' & pixel_column) AND --right boundary
			('0' & tank2_Y_pos >= pixel_row + tank_size) AND
			(tank2_Y_pos + tank_size <= '0' & pixel_row)
		then
			tank2_on <= '1';
		else
			tank2_on <= '0';
		end if;
	end process create_tank2;			
	
	create_bullet: process(bullet_X_pos, bullet_Y_pos, bullet_size)
	begin
		if ('0' & bullet_X_pos >= pixel_column + bullet_size) AND --left boundary
			(bullet_X_pos + bullet_size <= '0' & pixel_column) AND --right boundary
			('0' & bullet_Y_pos >= pixel_row + bullet_size) AND
			(bullet_Y_pos + bullet_size <= '0' & pixel_row)
		then
			bullet_on <= '1';
		else
			bullet_on <= '0';
		end if;
	end process create_bullet;
	
	move_tank: process(vert_sync)
	begin
		if (rising_edge(vert_sync)) then
			-- generate random x-position for tank1 
			-- gerakkan tank1 dulu
			if ('0' & tank1_X_pos >= pixel_column + tank_size) AND (tank1_X_pos + tank_size <= '0' & pixel_column) then
				tank1_X_pos <= tank1_X_pos - tank1_speed;
			elsif (tank1_X_pos <= tank_size) then
				tank1_X_pos <= tank1_X_pos + tank1_speed;
			end if;
			
			--implement tank2 movement based on mouse input
			if (mouse_col < ("1010000000" - tank_size)) then --640
				tank2_X_pos <= tank2_X_pos + tank2_speed;
			elsif (mouse_col > ("0000000000" + tank_size)) then
				tank2_X_pos <= tank2_X_pos - tank2_speed;
			else 
				tank2_X_pos <= tank2_X_pos; --stationery
			end if;
			
			--implement bullet movement and add variable to activate bullet (not bullet_on)
			if (bullet_fired = '1') then
				bullet_Y_pos <= bullet_Y_pos + tank2_speed;
			end if;
						
			--MORE COLLISION AL GORE RITHM HERE JSADGL;M (dont forget to increase score when collision occurs)
				--if RAND is more or less than the max and min boundaries (this only happens after a collision)
	end if;
	end process move_tank;
end architecture;