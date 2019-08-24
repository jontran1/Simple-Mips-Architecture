library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
	port( a, b, cin	: in std_logic;
			s, cout		: out std_logic);
end full_adder;

architecture Behavioral of full_adder is

	component half_adder
		port( a, b	: in std_logic;
				s, c	: out std_logic);
	end component;
	
 signal hs : std_logic;
 signal hc : std_logic;
 signal tc : std_logic;

	begin 
		ha1 : half_adder
			port map(a, b, hs, hc);
		ha2 : half_adder
			port map(hs, cin, s, tc);
		cout <= hc or tc;
		
end Behavioral; 
