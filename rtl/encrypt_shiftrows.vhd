--								
--									| matrix(0) matrix(4)  matrix(8) matrix(12) |
--                                  | matrix(1) matrix(5)  matrix(9) matrix(13) |
--                                  | matrix(2) matrix(6) matrix(10) matrix(14) |
--                                  | matrix(3) matrix(7) matrix(11) matrix(15) |
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

ENTITY encrypt_shiftrows IS
PORT(
    i_shiftrows    :   IN  std_logic_vector(127 downto 0);
    o_shiftrows    :   OUT std_logic_vector(127 downto 0)
    );
END encrypt_shiftrows;


ARCHITECTURE behaviour OF encrypt_shiftrows IS
TYPE matrix_index is array (15 downto 0) of std_logic_vector(7 downto 0); 
SIGNAL matrix,matrix_out: matrix_index;

signal template1 : std_logic_vector(7 downto 0);
signal template2 : std_logic_vector(7 downto 0);
signal template3 : std_logic_vector(7 downto 0);
signal template4 : std_logic_vector(7 downto 0);

begin

DATA_MAPPING:PROCESS(i_shiftrows)
BEGIN
	FOR i IN 15 DOWNTO 0 LOOP
	-- Shift second row 1 time
		if(i=10)then
			matrix(1) <= i_shiftrows(8*i+7 downto 8*i);
		elsif(i=6)then
			matrix(5) <= i_shiftrows(8*i+7 downto 8*i);
		elsif(i=2)then
			matrix(9) <= i_shiftrows(8*i+7 downto 8*i);
		elsif(i=14)then
			matrix(13) <= i_shiftrows(8*i+7 downto 8*i);
		--Shift third row 2 times
		elsif(i=5)then
			matrix(2) <= i_shiftrows(8*i+7 downto 8*i);
		elsif(i=1)then
			matrix(6) <= i_shiftrows(8*i+7 downto 8*i);
		elsif(i=13)then
			matrix(10) <= i_shiftrows(8*i+7 downto 8*i);
		elsif(i=9)then
			matrix(14) <= i_shiftrows(8*i+7 downto 8*i);
		--Shift third row 3 times	
		elsif(i=0)then
			matrix(3) <= i_shiftrows(8*i+7 downto 8*i);
		elsif(i=12)then
			matrix(7) <= i_shiftrows(8*i+7 downto 8*i);
		elsif(i=8)then
			matrix(11) <= i_shiftrows(8*i+7 downto 8*i);
		elsif(i=4)then
			matrix(15) <= i_shiftrows(8*i+7 downto 8*i);
		else
			matrix(15-i) <= i_shiftrows(8*i+7 downto 8*i);
		end if;
	END LOOP;
END PROCESS DATA_MAPPING;

-- process(matrix)is begin
	-- --Shift second row 1 time
	-- matrix_out(1) 	<= matrix(5);
	-- matrix_out(5)   <= matrix(9);
	-- matrix_out(9)   <= matrix(13);
	-- matrix_out(13)  <= matrix(1);
	
	-- --Shift third row 2 times
	-- matrix_out(2) 	<= matrix(10);
	-- matrix_out(6)   <= matrix(14);
	-- matrix_out(10)  <= matrix(2);
	-- matrix_out(14)  <= matrix(6);
	
	-- --Shift third row 3 times
	-- matrix_out(3) 	<= matrix(15);
	-- matrix_out(7)   <= matrix(3);
	-- matrix_out(11)  <= matrix(7);
	-- matrix_out(15)  <= matrix(11);
-- end process;

matrix_to_vector:PROCESS(matrix)
BEGIN
    FOR i IN 15 downto 0 LOOP
	o_shiftrows(8*i+7 downto 8*i) <= matrix(15-i);
    END LOOP;
END PROCESS matrix_to_vector;
end architecture;