LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.ALL;

ENTITY encrypt_SBox_Column IS
PORT(
    i_SBox_Column_SC    :	IN  std_logic_vector(31 DOWNTO 0);
    o_SBox_Column_SC    :	OUT std_logic_vector(31 DOWNTO 0)
    );
END encrypt_SBox_Column;

ARCHITECTURE beh OF encrypt_SBox_Column IS
COMPONENT encrypt_SBox
PORT(
    i_SBox_S    :	IN  std_logic_vector(7 DOWNTO 0);
    o_SBox_S    :	OUT std_logic_vector(7 DOWNTO 0)
    );
END COMPONENT;

BEGIN
--generating SBox columns
SBOXCOL:FOR i IN 3 DOWNTO 0 GENERATE
i_encrypt_SBox:encrypt_SBox
    PORT MAP(
	    i_SBox_S => i_SBox_Column_SC(8*i+7 downto 8*i),
	    o_SBox_S => o_SBox_Column_SC(8*i+7 downto 8*i)
	    );
END GENERATE SBOXCOL;	    

END beh;	