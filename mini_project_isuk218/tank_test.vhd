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

	signal red_data, green_data, blue_data, vert_sync_int, tank_on, target_on, bullet_on: std_logic;
	signal bullet_fired: std_logic := '0';
	signal size, bullet_size: std_logic_vector(9 downto 0);
	signal tank_Y_pos, tank_X_pos: std_logic_vector(9 downto 0);
	signal target_Y_pos, target_X_pos: std_logic_vector(9 downto 0);
	signal bullet_Y_pos, bullet_X_pos: std_logic_vector(9 downto 0);
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
				
				
size <= CONV_STD_LOGIC_VECTOR(5,10);
bullet_size <= CONV_STD_LOGIC_VECTOR(3,10);
tank_Y_pos <= CONV_STD_LOGIC_VECTOR(100,10);
tank_X_pos <= CONV_STD_LOGIC_VECTOR(100,10);
target_Y_pos <= CONV_STD_LOGIC_VECTOR(380,10);
target_X_pos <= CONV_STD_LOGIC_VECTOR(380,10);
bullet_Y_pos <= CONV_STD_LOGIC_VECTOR(150,10);
bullet_X_pos <= CONV_STD_LOGIC_VECTOR(150,10);

vert_sync <= vert_sync_int;

red_data <=  '1' AND NOT tank_on AND NOT bullet_on;
green_data <=  '1' AND NOT target_on AND NOT bullet_on;
blue_data <=  '1' AND NOT target_on AND NOT tank_on;

	-- this process is to display the tank controlled by user
	display_rgb: process(bullet_X_pos, bullet_Y_pos, tank_X_pos, tank_Y_pos, target_X_pos, target_Y_pos, pixel_column, pixel_row, size, bullet_Size)
	begin
		IF ('0' & target_X_pos <= pixel_column + Size) AND
		(target_X_pos + Size >= '0' & pixel_column) AND
		('0' & target_Y_pos <= pixel_row + Size) AND
		(target_Y_pos + Size >= '0' & pixel_row ) THEN
			target_on <= '1';
		ELSE
			target_on <= '0';
		END IF;
		
		IF ('0' & tank_X_pos <= pixel_column + Size) AND
		(tank_X_pos + Size >= '0' & pixel_column) AND
		('0' & tank_Y_pos <= pixel_row + Size) AND
		(tank_Y_pos + Size >= '0' & pixel_row ) THEN
			tank_on <= '1';
		ELSE
			tank_on <= '0';
		END IF;
		
		IF	('0' & Bullet_X_pos <= pixel_column + Bullet_Size) AND
		(Bullet_X_pos + Bullet_Size >= '0' & pixel_column) AND
		('0' & Bullet_Y_pos <= pixel_row + Bullet_Size) AND
		(Bullet_Y_pos + Bullet_Size >= '0' & pixel_row ) THEN
			bullet_on <= '1';
		ELSE
			bullet_on <= '0';
		END IF;
	end process display_rgb;

--	movement: process(vert_sync_int)
--		variable score: integer range 0 to 1001:= 0;
--		
--	--move tank
--			IF (rand >= (CONV_STD_LOGIC_VECTOR(640,11) - Size)) THEN
--				target_X_pos <= CONV_STD_LOGIC_VECTOR(640,11) - Size;
--			ELSIF (rand <= Size) THEN
--				target_X_pos <= Size;
--			ELSE
--				target_X_pos <= rand;
--			END IF;
--			
--			IF (rand(5) = '1') THEN
--				Ball_X_motion <= - CONV_STD_LOGIC_VECTOR(2,11);
--			ELSE	
--				Ball_X_motion <= CONV_STD_LOGIC_VECTOR(2,11);
--			END IF;
--			s_active <= '0';
--			Player_X_pos <= CONV_STD_LOGIC_VECTOR(320, 11);
	--move target
	--control when bullet is fired
			
	
end architecture;