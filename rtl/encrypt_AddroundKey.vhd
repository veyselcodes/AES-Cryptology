library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
ENTITY encrypt_AddroundKey IS
PORT(
    i_AddroundKey1    :   IN  std_logic_vector(127 downto 0);
	i_AddroundKey2    :   IN  std_logic_vector(127 downto 0);
    o_AddroundKey	  :   OUT std_logic_vector(127 downto 0)
    );
END encrypt_AddroundKey;

architecture behaviour of encrypt_AddroundKey is

begin

o_AddroundKey <= i_AddroundKey1 XOR i_AddroundKey2;


end architecture;