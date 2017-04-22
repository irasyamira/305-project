library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

entity tank_test is
	port (clk: in std_logic;
			signal left_button: in std_logic;
			signal red, green, blue: out std_logic;
			signal horiz_sync, vert_sync: out std_logic);
end tank_test;

architecture bhv of tank_test is

	signal red_data, green_data, blue_data, vert_sync_int: std_logic;
	signal tank_size: std_logic_vector(9 downto 0);
	signal tank_Y_pos: std_logic_vector(9 downto 0); 
	signal tank_X_pos: std_logic_vector(9 downto 0);
	signal target_size: std_logic_vector(9 downto 0);
	signal target_Y_pos: std_logic_vector(9 downto 0); 
	signal target_X_pos: std_logic_vector(9 downto 0);
	signal bullet_size: std_logic_vector(9 downto 0); 
	signal bullet_Y_pos: std_logic_vector(9 downto 0);
	signal bullet_X_pos: std_logic_vector(9 downto 0);
	signal tank_on, target_on, bullet_on: std_logic;
	signal pixel_row, pixel_column : std_logic_vector(9 downto 0); 

	component vga_sync is
 	port	(clock_25Mhz, red, green, blue	: in	std_logic;
         red_out, green_out, blue_out	: out std_logic;
			horiz_sync_out, vert_sync_out	: out	std_logic;
			pixel_row, pixel_column			: out std_logic_vector(9 downto 0));
	end component vga_sync;
	
begin

	sync:vga_sync
 		PORT MAP
		(clock_25Mhz => clk, 
		red => red_data, green => green_data, blue => blue_data,
    	red_out => red, green_out => green, blue_out => blue,
		horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
		pixel_row => pixel_row, pixel_column => pixel_column);
				
				
tank_size <= CONV_STD_LOGIC_VECTOR(5,10);
target_size <= CONV_STD_LOGIC_VECTOR(5,10);
bullet_size <= CONV_STD_LOGIC_VECTOR(3,10);
tank_Y_pos <= CONV_STD_LOGIC_VECTOR(100,10);
target_Y_pos <= CONV_STD_LOGIC_VECTOR(380,10);

vert_sync  <= vert_sync_int;

red_data <=  '1' AND NOT target_on AND NOT bullet_on;
green_data <=  '1' AND NOT tank_on AND NOT bullet_on;
blue_data <=  '1' AND NOT tank_on AND NOT target_on;

	-- this process is to display the tank controlled by user
	create_tank: process(tank_X_pos, tank_Y_pos, tank_size, pixel_column, pixel_row)
	begin
		if ('0' & tank_X_pos >= pixel_column + tank_size) AND --left boundary
			(tank_X_pos + tank_size <= '0' & pixel_column) AND --right boundary
			('0' & tank_Y_pos >= pixel_row + tank_size) AND
			(tank_Y_pos + tank_size <= '0' & pixel_row)
		then
			tank_on <= '1';
		else
			tank_on <= '0';
		end if;
	end process create_tank;
	
	-- this process is to display the targeted tank
	create_target: process(target_X_pos, target_Y_pos, target_size, pixel_column, pixel_row)
	begin
		if ('0' & target_X_pos >= pixel_column + target_size) AND --left boundary
			(target_X_pos + target_size <= '0' & pixel_column) AND --right boundary
			('0' & target_Y_pos >= pixel_row + target_size) AND
			(target_Y_pos + target_size <= '0' & pixel_row)
		then
			target_on <= '1';
		else
			target_on <= '0';
		end if;
	end process create_target;			
	
	create_bullet: process(bullet_X_pos, bullet_Y_pos, bullet_size, pixel_column, pixel_row)
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
	
end architecture;