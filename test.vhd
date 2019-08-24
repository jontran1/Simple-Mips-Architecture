library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity test is


    Port ( Q0  		: in std_logic; 
			  Q1	 		: in std_logic;   
			  D		 	: out std_logic);
			  
		end test;
		
architecture Behavioral of test is


begin 
	D <= Q0 AND Q1; 
		 

end Behavioral;