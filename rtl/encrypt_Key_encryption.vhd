
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

library work;
use work.AES_comps.all;

entity encrypt_Key_encryption	is
generic(
			i_Key_encryption_Nbits 			: in integer:=10
);
port(
		i_Key_encryption_reset				: in std_logic;
		i_Key_encryption_clk				: in std_logic;
		i_Key_encryption_Key  				: in std_logic_vector(127 downto 0);
		i_Key_encryption_Cipher  			: in std_logic_vector(127 downto 0);	
		i_Key_encryption_valid				: in std_logic;
        i_Key_encryption_ready              : in std_logic;
	
		-- Output
		o_Key_encryption_KS 				: out std_logic_vector(127 downto 0);
		o_Key_encryption_valid				: out std_logic;
		o_Key_encryption_ready				: out std_logic
);
end encrypt_Key_encryption;


architecture behaviour of encrypt_Key_encryption is
type state_mach is (IDLE,Read_TXT,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,LR);
signal state: state_mach;

-- Signals
signal i_KeySchedule_reset		: std_logic;
signal key_number               : std_logic_vector(3 downto 0);
signal i_KeySchedule_KS  		: std_logic_vector(127 downto 0);
signal o_KeySchedule_KS 		: std_logic_vector(127 downto 0);
signal i_Subbytes_SB			: std_logic_vector(127 DOWNTO 0);
signal o_Subbytes_SB			: std_logic_vector(127 DOWNTO 0);
signal i_mixcolumn				: std_logic_vector(127 downto 0);
signal o_mixcolumn		    	: std_logic_vector(127 downto 0);
signal i_shiftrows				: std_logic_vector(127 downto 0);
signal o_shiftrows				: std_logic_vector(127 downto 0);
signal o_AddroundKey			: std_logic_vector(127 downto 0);

signal i_LastRound_key    		: std_logic_vector(127 downto 0);
signal i_LastRound_key_cipher   : std_logic_vector(127 downto 0);

begin
i_encrypt_KeySchedule: encrypt_KeySchedule port map
	(
		i_KeySchedule_reset			=> i_Key_encryption_reset,
		i_KeySchedule_key_number	=> key_number,
		i_KeySchedule_KS  			=> i_KeySchedule_KS,
		-- Output
		o_KeySchedule_KS 			=> o_KeySchedule_KS
	);

i_encrypt_Subbytes: encrypt_Subbytes port map
	(
		i_Subbytes_SB	=> i_Subbytes_SB,
	    o_Subbytes_SB	=> o_Subbytes_SB
	);
	
i_encrypt_mix_column: encrypt_shiftrows port map
	(
		i_shiftrows		=> 	o_Subbytes_SB,
	    o_shiftrows		=> 	o_shiftrows
	);

i_encrypt_shiftrows: encrypt_mix_column port map
	(
		i_mixcolumn		=> 	o_shiftrows,
	    o_mixcolumn		=> 	o_mixcolumn
		
	);
	

i_encrypt_AddroundKey: encrypt_AddroundKey port map
	(
		i_AddroundKey1  	=> 	o_mixcolumn,
	    i_AddroundKey2  	=> 	o_KeySchedule_KS,
		o_AddroundKey		=>	o_AddroundKey
	);

i_encrypt_LastRound: encrypt_LastRound port map
	(
		i_LastRound_key    			=> 	i_LastRound_key,
	    i_LastRound_key_cipher   	=> 	o_KeySchedule_KS,
		o_LastRound    				=>	o_Key_encryption_KS
	);


-- Current Logic States
process(i_Key_encryption_clk, i_Key_encryption_reset)is
begin
	if((i_Key_encryption_reset='0'))then
		state 			<= IDLE;
		i_KeySchedule_KS  	    <=(others=>'0');
		key_number              <=(others=>'0');
		i_LastRound_key         <=(others=>'0');
		i_Subbytes_SB           <=(others=>'0');
		o_Key_encryption_ready <= '0';
		key_number<= x"0";
	elsif(i_Key_encryption_clk'event and i_Key_encryption_clk='1') then
		i_KeySchedule_KS  	    <=(others=>'0');
		key_number              <=(others=>'0');
		i_LastRound_key         <=(others=>'0');
		i_Subbytes_SB           <=(others=>'0');
		o_Key_encryption_ready <= '0';
		key_number<= x"0";
        case state is
            when IDLE=>
				state	<=Read_TXT;
                ---
                o_Key_encryption_ready <= '1';
			when Read_TXT=>
				state	<=R1;
            when R1=> -- Sub Bytes, Shift Rows, MixColumns, AddRoundKey
               if(i_Key_encryption_valid='1')then
                state <= R2;
				----
                key_number <= x"1";	
                i_Subbytes_SB <= i_Key_encryption_Key  XOR i_Key_encryption_Cipher;
                i_KeySchedule_KS <=	i_Key_encryption_Cipher;
			    -----
               else
                state <=R1;
               end if;
            when R2=>
               state<=R3;
               ----
               key_number <= x"2";	
               i_Subbytes_SB <= o_AddroundKey;
               i_KeySchedule_KS <=	o_KeySchedule_KS;
            when R3=>
               state<=R4;
               ----
               key_number <= x"3";	
               i_Subbytes_SB <= o_AddroundKey;
               i_KeySchedule_KS <=	o_KeySchedule_KS;
            when R4=>
               state<=R5;
               ----
               key_number <= x"4";	
               i_Subbytes_SB <= o_AddroundKey;
               i_KeySchedule_KS <=	o_KeySchedule_KS;
            when R5=>
               state<=R6;
               ----
               key_number <= x"5";	
               i_Subbytes_SB <= o_AddroundKey;
               i_KeySchedule_KS <=	o_KeySchedule_KS;
            when R6=>
               state<=R7;
               ----
               key_number <= x"6";	
               i_Subbytes_SB <= o_AddroundKey;
               i_KeySchedule_KS <=	o_KeySchedule_KS;
            when R7=>
               state<=R8;
			   ----
               key_number <= x"7";	
               i_Subbytes_SB <= o_AddroundKey;
               i_KeySchedule_KS <=	o_KeySchedule_KS;
            when R8=>
               state<=R9;
			   ----
               key_number <= x"8";	
               i_Subbytes_SB <= o_AddroundKey;
               i_KeySchedule_KS <=	o_KeySchedule_KS;
            when R9=>
                if(i_Key_encryption_Nbits <=10)then
                    state<=LR;
                else
                    state<=R10;
                end if;
				----
				key_number <= x"9";	
				i_Subbytes_SB <= o_AddroundKey;
				i_KeySchedule_KS <=	o_KeySchedule_KS;
				----
				if(i_Key_encryption_Nbits<=10)then
					o_Key_encryption_ready <= '1';
			   end if;
            when R10=>
               state<=R11;
			   ----
			   key_number <= x"A";	
			   i_Subbytes_SB <= o_AddroundKey;
			   i_KeySchedule_KS <=	o_KeySchedule_KS;
            when R11=>
                if(i_Key_encryption_Nbits <=12)then
                    state<=LR;
                else
                    state<=R12;
                end if;
				----
				key_number <= x"B";	
			    i_Subbytes_SB <= o_AddroundKey;
			    i_KeySchedule_KS <=	o_KeySchedule_KS;
				----
				if(i_Key_encryption_Nbits<=12)then
					o_Key_encryption_ready <= '1';
			   end if;
            when R12=>
               state<=R13;
			   ----
			   key_number <= x"C";	
			   i_Subbytes_SB <= o_AddroundKey;
			   i_KeySchedule_KS <=	o_KeySchedule_KS;
            when R13=>
               state<=LR;
			   ----
			   key_number <= x"D";	
			   i_Subbytes_SB <= o_AddroundKey;
			   i_KeySchedule_KS <=	o_KeySchedule_KS;
			   if(i_Key_encryption_Nbits<=14)then
					o_Key_encryption_ready <= '1';
			   end if;
            when LR=>
                if((i_Key_encryption_ready='1'))then
                    state<=R1;
                else
                    state<=LR;
                end if;
				----
				if(i_Key_encryption_Nbits <=10)then
					key_number <= x"A";	
				elsif(i_Key_encryption_Nbits <=12)then
					key_number <= x"C";
				else
					key_number <= x"E";
				end if;
				i_LastRound_key <= o_AddroundKey;
				i_KeySchedule_KS <= o_KeySchedule_KS;
				----
				
            when others=>
                state <=R1;
        end case;
		
		if((state = LR) and (i_Key_encryption_ready = '1') )then
			o_Key_encryption_valid <= '1';
		else
			o_Key_encryption_valid <= '0';
		end if;
	end if;
end process;
		
end architecture;