library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux_2to1_top  is


	Port ( in0, in1 		: in std_logic_vector(31 downto 0);
			  s0 				: in std_logic;
			  out0			: out std_logic_vector(31 downto 0));
			  
end mux_2to1_top;
		
architecture Behavioral of mux_2to1_top is


begin

	PROCESS(s0)
	begin
		if(s0 = '0')then
			out0 <= in0;
		
		else
			out0 <= in1;
		end if;
	
	end process;

end Behavioral;