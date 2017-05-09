LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY c_boost is
	port (c_in : in std_logic;
			c_out : out std_logic_vector(3 downto 0));
END ENTITY c_boost;

ARCHITECTURE BHV of c_boost is
begin
	c_out <= c_in & c_in & c_in & c_in;
END BHV;

