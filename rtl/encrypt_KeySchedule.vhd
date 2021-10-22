
-- original 4X4 key matrix
-- key (127 downto 0)  -->  | key(0)  key(4)   key(8)  key(12) |
--			                | key(1)  key(5)   key(9)  key(13) |
--			                | key(2)  key(6)  key(10)  key(14) |
--			                | key(3)  key(7)  key(11)  key(15) |
--				               |     	
--				               V
--	         	           key_word(3) = 127 downto 96	 is a 32-bit words 



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity encrypt_KeySchedule	is
port(
		i_KeySchedule_reset				: in std_logic;
		i_KeySchedule_key_number		: in std_logic_vector(3 downto 0);
		i_KeySchedule_KS  				: in std_logic_vector(127 downto 0);
		-- Output
		o_KeySchedule_KS 				: out std_logic_vector(127 downto 0)
);
end encrypt_KeySchedule;

architecture Behaviour of encrypt_KeySchedule is
component encrypt_SBox_Column IS
PORT(
    i_SBox_Column_SC    :	IN  std_logic_vector(31 DOWNTO 0);
    o_SBox_Column_SC    :	OUT std_logic_vector(31 DOWNTO 0)
    );
END component;
type k is array (3 downto 0) of std_logic_vector(31 downto 0);
signal key_word : k;
signal Sbox_out_key_word,RCON,Sbox_in_key_word : std_logic_vector(31 downto 0);
-- Key Out Templates
signal KS_out_template0,KS_out_template1,KS_out_template2,KS_out_template3 : std_logic_vector(31 downto 0);
begin
	
-- generating fourth column s box output.
		i_encrypt_SBox_Column: encrypt_SBox_Column 
		PORT MAP(
				i_SBox_Column_SC  => Sbox_in_key_word,
				o_SBox_Column_SC  => Sbox_out_key_word
				);
		
		with i_KeySchedule_key_number select
			RCON <= x"01000000" when X"1",
					x"02000000" when X"2",
					x"04000000" when X"3",
					x"08000000" when X"4",
					x"10000000" when X"5",
					x"20000000" when X"6",
					x"40000000" when X"7",
					x"80000000" when X"8",
					x"1B000000" when X"9",
					x"36000000" when X"A",
					x"6C000000" when X"B",
					x"D8000000" when X"C",
					x"AB000000" when X"D",
					x"4D000000" when X"E",
					x"9A000000" when X"F",
					x"00000000" when others;		
	-- general process
	process(ALL)is
		begin
		
		
					
					
			if(i_KeySchedule_reset='0')then										-- Active Low Reset
				o_KeySchedule_KS		<=x"00000000000000000000000000000000";
				KS_out_template0		<=(others=>'0');
				KS_out_template1		<=(others=>'0');
				KS_out_template2		<=(others=>'0');
				KS_out_template3		<=(others=>'0');
				Sbox_in_key_word<= i_KeySchedule_KS(23 downto 0)& i_KeySchedule_KS(31 downto 24);
				key_word(0) <=(others=>'0');
				key_word(1) <=(others=>'0');
				key_word(2) <=(others=>'0');
				key_word(3) <=(others=>'0'); -- Rotated 1 Time of Fourth Column
			else
				-- Generating RCON
				
					
				key_word(0) <= i_KeySchedule_KS(31 downto 0);
				key_word(1) <= i_KeySchedule_KS(63 downto 32);
				key_word(2) <= i_KeySchedule_KS(95 downto 64);
				key_word(3) <= i_KeySchedule_KS(127 downto 96); 

				Sbox_in_key_word<= i_KeySchedule_KS(23 downto 0)& i_KeySchedule_KS(31 downto 24);

			-- XOR First ,Fourth Columns and RCON[i] RCON[1] = X'00000001'
				KS_out_template3        <= key_word(3) XOR Sbox_out_key_word XOR RCON;
				
			-- XOR Second and First New Columns
				KS_out_template2        <= key_word(2) XOR KS_out_template3;
								 
			-- XOR Third and Second New Columns
				KS_out_template1        <= key_word(1) XOR KS_out_template2;

			-- XOR Fourth and Third New Columns
				KS_out_template0        <= key_word(0) XOR KS_out_template1;
			   
			-- Transmitting to Key Out
				o_KeySchedule_KS    	<=KS_out_template3 & KS_out_template2 & KS_out_template1 & KS_out_template0;
			end if;
	end process;
end Behaviour;