library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

ENTITY encrypt_LastRound IS
PORT(
    i_LastRound_key    		:   IN  std_logic_vector(127 downto 0);
	i_LastRound_key_cipher  :   IN  std_logic_vector(127 downto 0);
    o_LastRound    			:   OUT std_logic_vector(127 downto 0)
    );
END encrypt_LastRound;

architecture behaviour of encrypt_LastRound is
component encrypt_shiftrows IS
PORT(
    i_shiftrows    :   IN  std_logic_vector(127 downto 0);
    o_shiftrows    :   OUT std_logic_vector(127 downto 0)
    );
END component;

component encrypt_Subbytes IS
PORT(
    i_Subbytes_SB    :	IN  std_logic_vector(127 DOWNTO 0);
    o_Subbytes_SB    :	OUT std_logic_vector(127 DOWNTO 0)
    );
END component;

component encrypt_AddroundKey IS
PORT(
    i_AddroundKey1    :   IN  std_logic_vector(127 downto 0);
	i_AddroundKey2    :   IN  std_logic_vector(127 downto 0);
    o_AddroundKey	  :   OUT std_logic_vector(127 downto 0)
    );
END component;
signal o_Subbytes_SB  :  std_logic_vector(127 downto 0);
signal o_shiftrows    :  std_logic_vector(127 downto 0);
begin
i1_encrypt_Subbytes: encrypt_Subbytes port map
	(
		i_Subbytes_SB	=> i_LastRound_key,
	    o_Subbytes_SB	=> o_Subbytes_SB
	);
	
i1_encrypt_mix_column: encrypt_shiftrows port map
	(
		i_shiftrows		=> 	o_Subbytes_SB,
	    o_shiftrows		=> 	o_shiftrows
	);

i1_encrypt_AddroundKey: encrypt_AddroundKey port map
	(
		i_AddroundKey1  	=> 	o_shiftrows,
	    i_AddroundKey2  	=> 	i_LastRound_key_cipher,
		o_AddroundKey		=>	o_LastRound
	);

end architecture;