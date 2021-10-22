library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity encrypt_Key_encryption_tb	is
--
end encrypt_Key_encryption_tb;

architecture tb of encrypt_Key_encryption_tb is

	constant clk_period : time := 20 ns;
	signal i_Key_encryption_reset	: std_logic;
	signal i_Key_encryption_clk	    : std_logic;
	signal i_Key_encryption_Key  	: std_logic_vector(127 downto 0);
	signal i_Key_encryption_Cipher  : std_logic_vector(127 downto 0);
	signal o_Key_encryption_KS 	    : std_logic_vector(127 downto 0);
	                                
	
component encrypt_Key_encryption	is
generic(
		Nbits : in integer
);
port(
		i_Key_encryption_reset				: in std_logic;
		i_Key_encryption_clk				: in std_logic;
		i_Key_encryption_Key  				: in std_logic_vector(127 downto 0);
		i_Key_encryption_Cipher  			: in std_logic_vector(127 downto 0);
		-- Output
		o_Key_encryption_KS 				: out std_logic_vector(127 downto 0)
);
end component;


begin
 UUT :encrypt_Key_encryption 
 generic map(	Nbits => 12)
 port map(
		i_Key_encryption_reset		=> i_Key_encryption_reset,	
		i_Key_encryption_clk		=> i_Key_encryption_clk	,
		i_Key_encryption_Key  		=> i_Key_encryption_Key,
		i_Key_encryption_Cipher 	=> i_Key_encryption_Cipher,
		-- Output	                   
		o_Key_encryption_KS 		=> o_Key_encryption_KS 	
		
);

i_clk_process :process
   begin
        i_Key_encryption_clk <= '0';
        wait for clk_period/2;  --for 0.5 ns signal is '0'.
        i_Key_encryption_clk <= '1';
        wait for clk_period/2;  --for next 0.5 ns signal is '1'.
   end process;

i_encrypt_Key_encryption_stimulus:process
begin
	-- TRY 1
    i_Key_encryption_reset 	 <='0';
	i_Key_encryption_Cipher	 <= x"F43FB7FF9696D7AD55E687A34B960686";
	i_Key_encryption_Key	 <= x"2CCA4B86B726CCA8C480E14957323603";
	wait for 60 ns;
	i_Key_encryption_reset 	 <='1';
	wait for 300 ns;
	 i_Key_encryption_reset 	 <='1';
	
	 wait for 10 ns;
	
	wait;
end process;
	
end tb;