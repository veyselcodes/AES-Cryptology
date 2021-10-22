library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity HIGHT_RoundFunction	is
port(
		i_HIGHT_RoundFunction_rst 			: in std_logic;
		i_HIGHT_RoundFunction_clk			: in std_logic;
		i_HIGHT_RoundFunction_SK			: in std_logic_vector(1023 downto 0);
		-- Outputs
		o_HIGHT_RoundFunction_X				: out std_logic_vector(2048-1 downto 0)
);
end HIGHT_RoundFunction;


architecture behaviour of HIGHT_RoundFunction is

function F0(X : in std_logic_vector(7 downto 0)) return std_logic_vector is 
	variable x_temp : std_logic_vector(7 downto 0);
begin
	x_temp := (X(6 downto 0)& X(7)) XOR (X(5 downto 0)& X(7 downto 6)) XOR (X(0)& X(7 downto 1));
	return x_temp;
end function;

function F1(X : in std_logic_vector(7 downto 0)) return std_logic_vector is 
	variable x_temp : std_logic_vector(7 downto 0);
begin
	x_temp := (X(4 downto 0)& X(7 downto 5)) XOR (X(3 downto 0)& X(7 downto 4)) XOR (X(1 downto 0)& X(7 downto 2));
	return x_temp;
end function;

begin

process(i_HIGHT_RoundFunction_clk)is
begin
	if(i_HIGHT_RoundFunction_rst='0')then
		o_HIGHT_RoundFunction_X <= (others=> '0'); 
	elsif(i_HIGHT_RoundFunction_clk'event and i_HIGHT_RoundFunction_clk='1')then

	end if;
end process;


end architecture;
