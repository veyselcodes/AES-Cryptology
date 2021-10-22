library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity AES2Board is
port(
		clk 	     : in std_logic;
		number	     : in std_logic_vector(3 downto 0);
		key          : in std_logic_vector(127 downto 0);
		cipher       : in std_logic_vector(127 downto 0);
		-- Output
		seg          : out std_logic_vector(6 downto 0);
		AES_key      : out std_logic_vector(127 downto 0);
	    an           : out std_logic_vector(3 downto 0)
		--LED     : out std_logic_vector(7 downto 0)
);
end AES2Board;



architecture behavioral of AES2Board is

component encrypt_Key_encryption	is
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
end component;

TYPE matrix_index is array (15 downto 0) of std_logic_vector(7 downto 0); 
signal encrypt: matrix_index;

signal segm                 : std_logic_vector(3 downto 0);
signal segmx                : std_logic_vector(4 downto 0);
signal clkm		            : std_logic;
signal cnt		            : std_logic_vector(23 downto 0);
signal seg_temp             : std_logic_vector(6 downto 0);
signal led_activating_cnt   : std_logic_vector(1 downto 0);
signal key_out              : std_logic_vector(127 downto 0);
signal valid                : std_logic;
signal key_encrypt          : std_logic_vector(127 downto 0);
signal result               : std_logic_vector(127 downto 0);
begin


i_key_s: encrypt_Key_encryption
 generic map(
        i_Key_encryption_Nbits => 10
 )
 port map
	(
		i_Key_encryption_reset	=> '1',
        i_Key_encryption_clk	=> clk,	
        i_Key_encryption_Key  	=> key,
        i_Key_encryption_Cipher => cipher,
        i_Key_encryption_valid	=> '1',
        i_Key_encryption_ready  => '1',                  
        -- Output               
        o_Key_encryption_KS     => key_encrypt,
        o_Key_encryption_valid  => valid
        
	);
process(clk)is
begin
if(clk'event and clk='1')then
    if(valid ='1')then
        result <= key_encrypt;
    end if;
end if;
end process;
--LED(3 downto 0) <= result((127-8*to_integer(unsigned(number))-4) downto (127-(8*to_integer(unsigned(number)))-7));
--LED(7 downto 4) <= result((127-8*to_integer(unsigned(number))) downto (127-(8*to_integer(unsigned(number)))-3));


process(clk)is
begin
	if(rising_edge(clk))then
		cnt<= cnt + "000000000000000000000001";
	end if;
end process;
led_activating_cnt <=cnt(19 downto 18);

-------------------


process(segm)is
begin 
	case segm is 
		when "0000" =>	seg_temp <="0111111";--0
		when "0001" =>	seg_temp <="0000110";--1
		when "0010" =>	seg_temp <="1011011";--2
		when "0011" =>	seg_temp <="1001111";--3
		when "0100" =>	seg_temp <="1100110";--4
		when "0101" =>	seg_temp <="1101101";--5
		when "0110" =>	seg_temp <="1111101";--6	
		when "0111" =>	seg_temp <="0000111";--7
		when "1000" =>	seg_temp <="1111111";--8
		when "1001" => 	seg_temp <="1101111";--9
		when "1010" => 	seg_temp <="1110111";--A
		when "1011" => 	seg_temp <="1111100";--B
		when "1100" => 	seg_temp <="0111001";--C
		when "1101" => 	seg_temp <="1011110";--D
		when "1110" => 	seg_temp <="1111001";--E
		when "1111" => 	seg_temp <="1110001";--F
		when others =>  seg_temp <="0000000";
	end case;
end process;
seg <= not seg_temp;

process(led_activating_cnt) is
begin
    case led_activating_cnt is
    when "00" =>
        an <= "1101";
        segm <= result((127-8*to_integer(unsigned(number))) downto (127-(8*to_integer(unsigned(number)))-3));
    when "01" =>
        an <= "1110";
        segm <= result((127-8*to_integer(unsigned(number))-4) downto (127-(8*to_integer(unsigned(number)))-7));
    when "11" =>
        an <= "0111";
        segm <= number;
    when others =>
        an <= "1101";
        segm <=result((127-8*to_integer(unsigned(number))) downto (127-(8*to_integer(unsigned(number)))-3));
    end case; 
end process;
AES_key <= result;
end architecture;