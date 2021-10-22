library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity AES_general_tb is
end AES_general_tb;

architecture behavioral of AES_general_tb is
constant byte_number : integer := 10;

  component data_dumper
    GENERIC (
    	fname_dmp       : string  := "default.txt";
    	DATA_WIDTH   	: integer := 32;
    	IS_BIN          : boolean := false;
    	IS_DEC          : boolean := false;
    	IS_HEX          : boolean := false
    );
    PORT (
  		clk             : in  std_logic;
  		data_valid      : in  std_logic;
  		data_in_i       : in  std_logic_vector (DATA_WIDTH-1 downto 0)
    );
  end component;
  
    component data_injector
    generic (
      fname_data    : string;
      DATA_WIDTH    : integer := 32;
    	IS_DEC        : boolean := false;
    	IS_HEX        : boolean := false;
    	IS_COMPLEX    : boolean := false;
    	DELAY         : integer := 2*byte_number+1    -- delay as clock cycle to finish simulation (default 8cc)
    );
    port(
      clk           : in  std_logic;
      rst_n         : in  std_logic;
      enable        : in  std_logic;
      data_out_i    : out std_logic_vector(DATA_WIDTH-1 downto 0);
      data_out_q    : out std_logic_vector(DATA_WIDTH-1 downto 0);
      valid_out     : out std_logic;
  	  eof           : out std_logic
    );
  end component;
  
component encrypt_Key_encryption	is
generic(
			i_Key_encryption_Nbits 			: in integer
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



signal clk 	: std_logic:='1';
signal en	: std_logic;
signal rst	: std_logic;
signal eof	: std_logic;
signal inj_valid_out : std_logic;
signal AES_valid_out : std_logic;
signal write_valid: std_logic;
signal Cipher : std_logic_vector(127 downto 0);
signal Key : std_logic_vector(127 downto 0);
signal Encryption : std_logic_vector(127 downto 0);

begin

UUT: encrypt_Key_encryption 
generic map(
		i_Key_encryption_Nbits 	=> byte_number
)
port map(
		
		i_Key_encryption_reset	=> rst,
		i_Key_encryption_clk	=> clk,
		i_Key_encryption_Key  	=> Key,
		i_Key_encryption_Cipher => Cipher,
		i_Key_encryption_valid	=> inj_valid_out,
		i_Key_encryption_ready  => '1',
							
		-- Output  
		o_Key_encryption_KS 	=> Encryption,
		o_Key_encryption_valid	=> AES_valid_out,
		o_Key_encryption_ready	=> en
		
);





i_injector_Key: data_injector
generic map(
fname_data  => "../verif/i_Key.txt",
DATA_WIDTH => 128,
IS_HEX     => true
)
port map(
clk      	=> clk,
rst_n     	=> rst,
enable    	=> en,
data_out_i	=> Key,
valid_out 	=> inj_valid_out,
eof       	=> eof
);
i_injector_Cipher: data_injector
generic map(
fname_data  => "../verif/i_Cipher.txt",
DATA_WIDTH => 128,
IS_HEX     => true
)
port map(
clk      	=> clk,
rst_n     	=> rst,
enable    	=> en,
data_out_i	=> Cipher,
valid_out 	=> inj_valid_out,
eof       	=> eof
);



write_valid <= ((not eof) and AES_valid_out);


i_dumper: data_dumper
generic map(
fname_dmp => "../verif/test_out.txt",
DATA_WIDTH => 128,
IS_HEX     => true
)
port map(
clk      	=> clk,
data_in_i	=> Encryption,
data_valid 	=> write_valid
);



--clock stimulus
 clk_process: process
	begin
	clk <= '1';
	wait for 10 ns;
	clk <= '0';
	wait for 10 ns;
 end process;

process
begin

rst<='0';
wait for 30 ns;
rst <='1';
wait;
end process;
END behavioral;