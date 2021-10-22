library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is
generic(
c_clkfreq 	   : integer := 100_000_000;
c_baudrate	   : integer := 115_200;
c_stopbit 	   : integer := 2
);
port (
clk		  	   : in std_logic;
key_or_cipher  : in std_logic;
rx_i	  	   : in std_logic;
btnc_i		   : in std_logic;
btnr_i		   : in std_logic;
number	       : in std_logic_vector(3 downto 0);
LED            : out std_logic_vector(15 downto 0);
tx_o		   : out std_logic;
seg            : out std_logic_vector(6 downto 0);
an             : out std_logic_vector(3 downto 0)
);
end top;

architecture Behavioural of top is

signal clkm : std_logic;
signal btnc_deb : std_logic := '0';
signal btnr_deb : std_logic := '0';
signal btnc_deb_next : std_logic := '0';
signal btnr_deb_next : std_logic := '0';
signal tx_start : std_logic := '0';
signal tx_done_tick : std_logic := '0';
signal rx_done_tick : std_logic := '0';
signal data         : std_logic_vector(7 downto 0);
signal t_data         : std_logic_vector(7 downto 0);
signal cipher         : std_logic_vector(127 downto 0);
signal key         : std_logic_vector(127 downto 0);
signal AES_key         : std_logic_vector(127 downto 0);
signal led_o         : std_logic_vector(15 downto 0);
signal cnt                 : integer := 0;
signal cnt_cipher          : integer := 0;
signal cnt_key          : integer := 0;
signal cnt_AES          : integer := 0;

component AES2Board is
port(
		clk 	     : in std_logic;
		number	     : in std_logic_vector(3 downto 0);
		key          : in std_logic_vector(127 downto 0);
		cipher       : in std_logic_vector(127 downto 0);
		-- Output
		seg          : out std_logic_vector(6 downto 0);
		AES_key      : out std_logic_vector(127 downto 0);
	    an           : out std_logic_vector(3 downto 0)
);
end component;

component debounce is
generic(
c_clkfreq 	   	   : integer := 100_000_000;
c_debtime	   	   : integer := 1000;
c_initval 	  	   : std_logic := '0'
);
port (
clk		  	   	   : in std_logic;
signal_i		   : in std_logic;
signal_o		   : out std_logic
);
end component;



component uart_transmitter is
generic(
c_clkfreq 	   : integer := 100_000_000;
c_baudrate	   : integer := 115_200;
c_stopbit 	   : integer := 2
);
port (
clk		  	   : in std_logic;
din_i	  	   : in std_logic_vector(7 downto 0);
tx_start_i	   : in std_logic;
tx_o	  	   : out std_logic;
tx_done_tick_o : out std_logic
);
end component;

component uart_receiver is
generic(
c_clkfreq 	   : integer := 100_000_000;
c_baudrate	   : integer := 115_200
);
port (
clk		  	   : in std_logic;
rx_i		   : in std_logic;
dout_o	  	   : out std_logic_vector(7 downto 0);
rx_done_tick_o : out std_logic
);
end component;

begin

i_uart_tx: uart_transmitter generic map(
c_clkfreq 	   => 100_000_000,
c_baudrate	   => 115_200,
c_stopbit 	   => 2
)
port map(
clk		  	   => clk		  	  ,
din_i	  	   => data,
tx_start_i	   => tx_start  	  ,
tx_o	  	   => tx_o	  	      ,
tx_done_tick_o => tx_done_tick
);


DEBC: debounce
generic map(
c_clkfreq 	   	=> 100_000_000,
c_debtime	   	=> 1000,
c_initval 	  	=>  '0'
)
port map(
clk		  	   => clk,
signal_i	   => btnc_i,
signal_o	   => btnc_deb
);

DEBR: debounce
generic map(
c_clkfreq 	   	=> 100_000_000,
c_debtime	   	=> 1000,
c_initval 	  	=>  '0'
)
port map(
clk		  	   => clk,
signal_i	   => btnr_i,
signal_o	   => btnr_deb
);

i_uart_rx: uart_receiver
generic map(
c_clkfreq 	   => 100_000_000,
c_baudrate	   => 115_200
)
port map(
clk		  	   => clk,
rx_i		   => rx_i,
dout_o	  	   => t_data,
rx_done_tick_o => rx_done_tick
);

i_AES: AES2Board
port map(
		clk 	=> clk,
		number	=> number,
		key     => key,
		cipher  => cipher,
		AES_key => AES_key,
		seg     => seg,
	    an      => an
);

process(clk)is
begin
	if(clk'event and clk='1')then
	   btnc_deb_next <= btnc_deb;
	   tx_start <='0';
	   if(key_or_cipher = '0')then
	       for i in 0 to 15 loop
                if(cnt_key = i)then
                    led_o(i) <= '1';
                else
                    led_o(i) <= '0';
                end if;
           end loop;
       else
            for i in 0 to 15 loop
                if(cnt_cipher = i)then
                    led_o(cnt_cipher) <= '1';
                else
                    led_o(i) <= '0';
                end if;
            end loop;
       end if;
	   if(btnc_deb_next = '0' and btnc_deb = '1')then
	       
	       -----------------
	       if(key_or_cipher = '0')then
                
                if(cnt_key = 15)then
                    cnt_key <= 0;
                else
                    cnt_key <= cnt_key +1;
                end if;
                key(127-8*cnt_key downto (127-(8*cnt_key)-7)) <= t_data;
            else
                
                if(cnt_cipher = 15)then
                    cnt_cipher <= 0;
                else
                    cnt_cipher <= cnt_cipher +1;
                end if;
                cipher(127-8*cnt_cipher downto (127-(8*cnt_cipher)-7)) <= t_data;
            end if; 
	   end if; 
	   ------------Transmit Key_Out --------------
	   
	   btnr_deb_next <= btnr_deb;
	   if(btnr_deb_next= '0' and btnr_deb = '1')then
	       tx_start <='1';
	       data <= AES_key(127-8*cnt_AES downto (127-(8*cnt_AES)-7));
	       if(cnt_AES = 15)then
               cnt_AES <= 0;
           else
               cnt_AES <= cnt_AES +1;
           end if;
       end if;
	end if;
end process;
LED <= led_o;

end Behavioural;
