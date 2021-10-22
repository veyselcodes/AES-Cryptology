library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

ENTITY encrypt_Subbytes IS
PORT(
    i_Subbytes_SB    :	IN  std_logic_vector(127 DOWNTO 0);
    o_Subbytes_SB    :	OUT std_logic_vector(127 DOWNTO 0)
    );
END encrypt_Subbytes;


ARCHITECTURE beh OF encrypt_Subbytes IS
component encrypt_SBox_Column IS
PORT(
    i_SBox_Column_SC    :	IN  std_logic_vector(31 DOWNTO 0);
    o_SBox_Column_SC    :	OUT std_logic_vector(31 DOWNTO 0)
    );
END component;

BEGIN
--Subbytes Operation
SBOXSubbyte:FOR i IN 3 DOWNTO 0 GENERATE
i_encrypt_SBox_Column:encrypt_SBox_Column
    PORT MAP(
	    i_SBox_Column_SC => i_Subbytes_SB(32*i+31 downto 32*i),
	    o_SBox_Column_SC => o_Subbytes_SB(32*i+31 downto 32*i)
	    );
END GENERATE SBOXSubbyte;	    
END beh;	