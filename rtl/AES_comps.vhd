library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.numeric_std.all;

package AES_comps is
-- Key Schedule Component
component encrypt_KeySchedule	is
port(
		i_KeySchedule_reset				: in std_logic;
		i_KeySchedule_key_number		: in std_logic_vector(3 downto 0);
		i_KeySchedule_KS  				: in std_logic_vector(127 downto 0);
		-- Output
		o_KeySchedule_KS 				: out std_logic_vector(127 downto 0)
);
end component;

-- Subbyte Component
component encrypt_Subbytes IS
PORT(
    i_Subbytes_SB    :	IN  std_logic_vector(127 DOWNTO 0);
    o_Subbytes_SB    :	OUT std_logic_vector(127 DOWNTO 0)
    );
END component;

-- Shiftrows Component
component encrypt_shiftrows IS
PORT(
    i_shiftrows    :   IN  std_logic_vector(127 downto 0);
    o_shiftrows    :   OUT std_logic_vector(127 downto 0)
    );
END component;

-- Mix Columns Component
component encrypt_mix_column IS
PORT(
    i_mixcolumn    :   IN  std_logic_vector(127 downto 0);
    o_mixcolumn    :   OUT std_logic_vector(127 downto 0)
    );
END component;

-- AddRoundKey
component encrypt_AddroundKey IS
PORT(
    i_AddroundKey1    :   IN  std_logic_vector(127 downto 0);
	i_AddroundKey2    :   IN  std_logic_vector(127 downto 0);
    o_AddroundKey	  :   OUT std_logic_vector(127 downto 0)
    );
END component;

-- LastRound
component encrypt_LastRound IS
PORT(
    i_LastRound_key    		:   IN  std_logic_vector(127 downto 0);
	i_LastRound_key_cipher  :   IN  std_logic_vector(127 downto 0);
    o_LastRound    			:   OUT std_logic_vector(127 downto 0)
    );
END component; 
end package;
