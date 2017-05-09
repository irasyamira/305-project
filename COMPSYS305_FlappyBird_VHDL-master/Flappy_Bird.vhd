library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

--This component divides a clock by 2
entity Flappy_Bird is
port(
		
end clk_div;

architecture behavior of Flappy_Bird is

COMPONENT vga_sync is 
PORT(	clock_25Mhz, red, green, blue: IN STD_LOGIC;
			red_out, green_out, blue_out, horiz_sync_out, vert_sync_out: OUT STD_LOGIC;
			pixel_row, pixel_column: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END vga_sync;

end architecture;