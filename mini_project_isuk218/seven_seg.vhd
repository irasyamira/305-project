library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_seg is
  port (clk : in std_logic;
        bcd : in std_logic_vector(0 to 3);
        segment7 : out std_logic_vector(0 to 6));
end seven_seg;

architecture bhv of seven_seg is
begin
  process(clk,bcd)
  begin
    if(rising_edge(clk)) then
      case bcd is
        when "0000"=> segment7 <="0000001";
        when "0001"=> segment7 <="1001111";
        when "0010"=> segment7 <="0010010";
        when "0011"=> segment7 <="0000110";
        when "0100"=> segment7 <="1001100";
        when "0101"=> segment7 <="0100100";
        when "0110"=> segment7 <="0100000";
        when "0111"=> segment7 <="0001111";
        when "1000"=> segment7 <="0000000";
        when "1001"=> segment7 <="0000100";
        when "1010"=> segment7 <="0001000";
        when "1011"=> segment7 <="1100000";
        when "1100"=> segment7 <="0110001";
        when "1101"=> segment7 <="1000010";
        when "1110"=> segment7 <="0010000";
        when "1111"=> segment7 <="0111000";
        when others=> segment7 <="1111111";
      end case;
    end if;
  end process;
end bhv;