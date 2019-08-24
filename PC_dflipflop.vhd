library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity PC_dflipflop is


    Port ( D  		: in std_logic_vector(31 downto 0);  
           clk		: in std_logic;
			  Q	 	: out std_logic_vector(31 downto 0));
			  
		end PC_dflipflop;
		
architecture Behavioral of PC_dflipflop is


begin 
		PROCESS(clk)
		begin
			
					
			if((clk'event) and (clk='1')) then
					Q <= D;
			end if;
		
		end process;
		 

end Behavioral;