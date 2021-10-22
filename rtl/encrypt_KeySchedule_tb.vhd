library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity encrypt_KeySchedule_tb	is
--
end encrypt_KeySchedule_tb;

architecture tb of encrypt_KeySchedule_tb is

	signal i_KeySchedule_reset			:  std_logic;
	signal i_KeySchedule_key_number		:  std_logic_vector(3 downto 0);
	signal i_KeySchedule_KS  			:  std_logic_vector(127 downto 0);
	-- Output
	signal o_KeySchedule_KS 			:  std_logic_vector(127 downto 0);
    
component encrypt_KeySchedule port(
		i_KeySchedule_reset				: in std_logic;
		i_KeySchedule_key_number		: in std_logic_vector(3 downto 0);
		i_KeySchedule_KS  				: in std_logic_vector(127 downto 0);
		-- Output
		o_KeySchedule_KS 				: out std_logic_vector(127 downto 0)
);
end component;

begin
 UUT :encrypt_KeySchedule port map(
		i_KeySchedule_reset			=> i_KeySchedule_reset,	
		i_KeySchedule_key_number	=> i_KeySchedule_key_number,
		i_KeySchedule_KS  			=> i_KeySchedule_KS,
		-- Output
		o_KeySchedule_KS  			=> o_KeySchedule_KS
);

i_encrypt_KeySchedule_stimulus:process
begin
	-- TRY 1
    i_KeySchedule_reset 	 <='1';
	i_KeySchedule_KS		 <= x"2B7E151628AED2A6ABF7158809CF4F3C";
	wait for 200 ns;
	 i_KeySchedule_reset 	 <='0';
	 	i_KeySchedule_key_number <=x"1";
	
	 wait for 10 ns;
	i_KeySchedule_reset 	 <='1';
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0010";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0011";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0100";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0101";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0110";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0111";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="1000";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="1001";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="1010";
	wait for 100 ns;
	-- TRY 2
	i_KeySchedule_reset 	 <='0';
	i_KeySchedule_KS		 <= x"5468617473206D79204B756E67204675";
	wait for 10 ns;
	i_KeySchedule_reset 	 <='1';
	wait for 10 ns;
	i_KeySchedule_key_number <=x"1";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0010";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0011";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0100";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0101";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0110";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="0111";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="1000";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="1001";
	wait for 20 ns;
	i_KeySchedule_KS		 <= o_KeySchedule_KS;
	i_KeySchedule_key_number <="1010";
	wait for 100 ns;
	wait;
end process;
	
end tb;