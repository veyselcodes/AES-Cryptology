-- *********************************************************************************************
-- ENTITY           : shift_rows
--
-- DESCRIPTION      : The information in this module is based on the Federal 
--                    Information Processing Standards Publication 197 November 26 2001   
--                    This Module takes a 128 bit input, converted to 4X4 matrix, then 
--                    multiplying it by the matrix given in the spec.then mapping it back to
--                    to a vector 
--  
--             | 02  03  01  01 |   | matrix(0) matrix(4)  matrix(8) matrix(12) |
-- from Spec-->| 01  02  03  01 | X | matrix(1) matrix(5)  matrix(9) matrix(13) | <-------input
--             | 01  01  02  03 |   | matrix(2) matrix(6) matrix(10) matrix(14) |
--             | 03  01  01  02 |   | matrix(3) matrix(7) matrix(11) matrix(15) |

-- *********************************************************************************************

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

ENTITY encrypt_mix_column IS
PORT(
    i_mixcolumn    :   IN  std_logic_vector(127 downto 0);
    o_mixcolumn    :   OUT std_logic_vector(127 downto 0)
    );
END encrypt_mix_column;

ARCHITECTURE behaviour OF encrypt_mix_column IS
TYPE matrix_index is array (15 downto 0) of std_logic_vector(7 downto 0); 
TYPE shift_index is array (15 downto 0) of std_logic_vector(8 downto 0); 
SIGNAL shiftby_2, shiftby_3, xored : shift_index;
SIGNAL matrix, matrix_out, multby_2, multby_3 : matrix_index;


begin
--first take the input and map it to a 4X4 matrix

DATA_MAPPING:PROCESS(i_mixcolumn)
BEGIN
    FOR i IN 15 DOWNTO 0 LOOP
	matrix(15-i) <= i_mixcolumn(8*i+7 downto 8*i);
    END LOOP;
END PROCESS DATA_MAPPING;

--

-- first multiply by 2 
MULTIPLYINGBY2:PROCESS(matrix, shiftby_2)
BEGIN
    FOR i IN  15 downto 0 LOOP
	shiftby_2(i) <= matrix(i) & '0';	
	IF (shiftby_2(i)(8)='1') THEN	-- for values exceeding 7 bit field, XOR it with the irreducible vector given in the spec
	    multby_2(i) <= shiftby_2(i)(7 downto 0) XOR "00011011";
	ELSE
	    multby_2(i) <= shiftby_2(i)(7 downto 0);
	END IF;
    END LOOP;
END PROCESS MULTIPLYINGBY2;


--multiply by 3

MULTIPLYINGBY3:PROCESS(matrix, shiftby_3, xored)
BEGIN
    FOR i IN  15 downto 0 LOOP
	shiftby_3(i) <= matrix(i) & '0';	    -- 2*value
	xored(i) <= shiftby_3(i) XOR '0' & matrix(i);  --3*value = 2*value XOR value

	IF (xored(i)(8)='1') THEN	    
	    multby_3(i) <= xored(i)(7 downto 0) XOR "00011011"; -- for values exceeding 7 bit field, XOR it with the irreducible vector given in the spec
	ELSE
	    multby_3(i) <= xored(i)(7 downto 0);
	END IF;
    END LOOP;
END PROCESS MULTIPLYINGBY3;

--  
--             | 02  03  01  01 |   | matrix(0) matrix(4)  matrix(8) matrix(12) |
-- from Spec-->| 01  02  03  01 | X | matrix(1) matrix(5)  matrix(9) matrix(13) | <-------input
--             | 01  01  02  03 |   | matrix(2) matrix(6) matrix(10) matrix(14) |
--             | 03  01  01  02 |   | matrix(3) matrix(7) matrix(11) matrix(15) |


-- 4X4 matrix multiplication & mix column
--row one
matrix_out(0)  <= multby_2(0)  XOR multby_3(1)  XOR matrix(2)  XOR matrix(3);
matrix_out(4)  <= multby_2(4)  XOR multby_3(5)  XOR matrix(6)  XOR matrix(7);
matrix_out(8)  <= multby_2(8)  XOR multby_3(9)  XOR matrix(10) XOR matrix(11);
matrix_out(12) <= multby_2(12) XOR multby_3(13) XOR matrix(14) XOR matrix(15);
--row two
matrix_out(1)  <= matrix(0)  XOR multby_2(1)  XOR multby_3(2)  XOR matrix(3); 
matrix_out(5)  <= matrix(4)  XOR multby_2(5)  XOR multby_3(6)  XOR matrix(7); 
matrix_out(9)  <= matrix(8)  XOR multby_2(9)  XOR multby_3(10) XOR matrix(11); 
matrix_out(13) <= matrix(12) XOR multby_2(13) XOR multby_3(14) XOR matrix(15); 
--row three
matrix_out(2)  <= matrix(0)  XOR matrix(1)  XOR multby_2(2)  XOR multby_3(3);
matrix_out(6)  <= matrix(4)  XOR matrix(5)  XOR multby_2(6)  XOR multby_3(7);
matrix_out(10) <= matrix(8)  XOR matrix(9)  XOR multby_2(10) XOR multby_3(11);
matrix_out(14) <= matrix(12) XOR matrix(13) XOR multby_2(14) XOR multby_3(15);
--row four
matrix_out(3)  <= multby_3(0)  XOR matrix(1)  XOR matrix(2)  XOR multby_2(3);
matrix_out(7)  <= multby_3(4)  XOR matrix(5)  XOR matrix(6)  XOR multby_2(7);
matrix_out(11) <= multby_3(8)  XOR matrix(9)  XOR matrix(10) XOR multby_2(11);
matrix_out(15) <= multby_3(12) XOR matrix(13) XOR matrix(14) XOR multby_2(15);

--mapping back to a vector

matrix_to_vector:PROCESS(matrix_out)
BEGIN
    FOR i IN 15 downto 0 LOOP
	o_mixcolumn(8*i+7 downto 8*i) <= matrix_out(15-i);
    END LOOP;
END PROCESS matrix_to_vector;


end architecture;