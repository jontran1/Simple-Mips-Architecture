library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity D_FlipFlop_32 is


    Port ( D  		: in std_logic_vector(31 downto 0);  
           clk		: in std_logic;
			  e		: in std_logic;
			  reset	: in std_logic;
			  Q	 	: out std_logic_vector(31 downto 0));
			  
		end D_FlipFlop_32;
		
architecture Behavioral of D_FlipFlop_32 is


begin 
		PROCESS(clk, reset, e)
		begin
			if(e = '1')then
			
				if(reset = '1') then 
						Q <= "00000000000000000000000000000000";
						
				elsif((clk'event) and (clk='1')) then
						Q <= D;

						
				end if;
			end if;
		
		end process;
		 

end Behavioral;