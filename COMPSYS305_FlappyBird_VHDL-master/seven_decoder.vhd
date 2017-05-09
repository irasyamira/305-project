library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity seven_decoder is
	port (clk: in std_logic;
			score_in : std_logic_vector (7 downto 0);
			seg_ones_out : out std_logic_vector (6 downto 0);
			seg_tens_out : out std_logic_vector (6 downto 0));
end entity seven_decoder;

architecture behaviour of seven_decoder is
	signal t_seg_ones_out : std_logic_vector (6 downto 0);
	signal t_seg_tens_out : std_logic_vector (6 downto 0);
	signal ones : std_logic_vector (3 downto 0);
	signal tens : std_logic_vector (3 downto 0);
begin
	
	ones <= score_in(3 downto 0);
	tens <= score_in(7 downto 4);
	
	seven_decoder : process (clk,ones,tens)
	begin
		if (rising_edge(clk)) then
			case ones is
				when "0000" => t_seg_ones_out <= "1000000"; -- 0
				when "0001" => t_seg_ones_out <= "1111001"; -- 1
				when "0010" => t_seg_ones_out <= "0100100"; -- 2
				when "0011" => t_seg_ones_out <= "0110000"; -- 3
				when "0100" => t_seg_ones_out <= "0011001"; -- 4
				when "0101" => t_seg_ones_out <= "0010010"; -- 5
				when "0110" => t_seg_ones_out <= "0000010"; -- 6
				when "0111" => t_seg_ones_out <= "1111000"; -- 7
				when "1000" => t_seg_ones_out <= "0000000"; -- 8
				when "1001" => t_seg_ones_out <= "0010000"; -- 9
				when OTHERS => t_seg_ones_out <= "0001000"; -- A
			end case;
			case tens is
				when "0000" => t_seg_tens_out <= "1000000"; -- 0
				when "0001" => t_seg_tens_out <= "1111001"; -- 1
				when "0010" => t_seg_tens_out <= "0100100"; -- 2
				when "0011" => t_seg_tens_out <= "0110000"; -- 3
				when "0100" => t_seg_tens_out <= "0011001"; -- 4
				when "0101" => t_seg_tens_out <= "0010010"; -- 5
				when "0110" => t_seg_tens_out <= "0000010"; -- 6
				when "0111" => t_seg_tens_out <= "1111000"; -- 7
				when "1000" => t_seg_tens_out <= "0000000"; -- 8
				when "1001" => t_seg_tens_out <= "0010000"; -- 9
				when OTHERS => t_seg_tens_out <= "0001000"; -- A
			end case;
		end if;
	end process;
	
	seg_ones_out <= t_seg_ones_out;
	seg_tens_out <= t_seg_tens_out;
	
end architecture;