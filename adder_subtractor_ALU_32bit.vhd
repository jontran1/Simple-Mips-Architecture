library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_subtractor_ALU_32bit is
	port( a, b			: in std_logic_vector(31 downto 0);
			cin			: in std_logic;
			cout,v		: out std_logic;
			s				: out std_logic_vector(31 downto 0));
end adder_subtractor_ALU_32bit;

architecture Behavioral of adder_subtractor_ALU_32bit is

	component full_adder
		port( a, b, cin	: in std_logic;
				s, cout		: out std_logic);
	end component;
	
	signal c: std_logic_vector (32 downto 0);

	begin 
		fa0 : full_adder
			port map(a(0), b(0) xor cin, cin, s(0), c(1));
		fa1 : full_adder
			port map(a(1), b(1) xor cin, c(1), s(1), c(2));
		fa2 : full_adder
			port map(a(2), b(2) xor cin, c(2), s(2), c(3));	
		fa3 : full_adder
			port map(a(3), b(3) xor cin, c(3), s(3), c(4));	
		
		fa4 : full_adder
			port map(a(4), b(4) xor cin, c(4), s(4), c(5));
		fa5 : full_adder
			port map(a(5), b(5) xor cin, c(5), s(5), c(6));
		fa6 : full_adder
			port map(a(6), b(6) xor cin, c(6), s(6), c(7));	
		fa7 : full_adder
			port map(a(7), b(7) xor cin, c(7), s(7), c(8));		

		fa8 : full_adder
			port map(a(8), b(8) xor cin, c(8), s(8), c(9));
		fa9 : full_adder
			port map(a(9), b(9) xor cin, c(9), s(9), c(10));
		fa10 : full_adder
			port map(a(10), b(10) xor cin, c(10), s(10), c(11));	
		fa11 : full_adder
			port map(a(11), b(11) xor cin, c(11), s(11), c(12));		
		
		fa12 : full_adder
			port map(a(12), b(12) xor cin, c(12), s(12), c(13));
		fa13 : full_adder
			port map(a(13), b(13) xor cin, c(13), s(13), c(14));
		fa14 : full_adder
			port map(a(14), b(14) xor cin, c(14), s(14), c(15));	
		fa15 : full_adder
			port map(a(15), b(15) xor cin, c(15), s(15), c(16));	
		
		fa16 : full_adder
			port map(a(16), b(16) xor cin, c(16), s(16), c(17));
		fa17 : full_adder
			port map(a(17), b(17) xor cin, c(17), s(17), c(18));
		fa18 : full_adder
			port map(a(18), b(18) xor cin, c(18), s(18), c(19));	
		fa19 : full_adder
			port map(a(19), b(19) xor cin, c(19), s(19), c(20));		

		fa20 : full_adder
			port map(a(20), b(20) xor cin, c(20), s(20), c(21));
		fa21 : full_adder
			port map(a(21), b(21) xor cin, c(21), s(21), c(22));
		fa22 : full_adder
			port map(a(22), b(22) xor cin, c(22), s(22), c(23));	
		fa23 : full_adder
			port map(a(23), b(23) xor cin, c(23), s(23), c(24));		
		
		fa24 : full_adder
			port map(a(24), b(24) xor cin, c(24), s(24), c(25));
		fa25 : full_adder
			port map(a(25), b(25) xor cin, c(25), s(25), c(26));
		fa26 : full_adder
			port map(a(26), b(26) xor cin, c(26), s(26), c(27));	
		fa27 : full_adder
			port map(a(27), b(27) xor cin, c(27), s(27), c(28));		

		fa28 : full_adder
			port map(a(28), b(28) xor cin, c(28), s(28), c(29));
		fa29 : full_adder
			port map(a(29), b(29) xor cin, c(29), s(29), c(30));
		fa30 : full_adder
			port map(a(30), b(30) xor cin, c(30), s(30), c(31));	
		fa31 : full_adder
			port map(a(31), b(31) xor cin, c(31), s(31), c(32));	
		v <= c(31) xor c(32);
		cout <= c(32);
		
end Behavioral; 
