library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Instruction_Memory is

Port
		(clk       		: in std_logic;
		 pc_address		: in integer;
		 machine_code 	: out STD_LOGIC_VECTOR(31 downto 0));
end Instruction_Memory;


architecture MEM_Behavioral of Instruction_Memory is
	
type array_WORD is array (0 to 255) of std_logic_vector(31 downto 0);
signal mem:array_WORD;	
	
begin
	process(clk,pc_address)
	
	variable addr: integer;


		begin	
		
			mem(0)<= "10101100000001000000000000000000"; --StoreWord
			mem(4)<= "10101100000001010000000000000001"; --StoreWord
			mem(8)<= "10000000000000010000000000000000"; --LoadWord
			mem(12)<="10000000000000100000000000000001"; --LoadWord
			mem(16)<="00000000001000100001100000000000"; --Add R Type
			mem(20)<="10101100000000110000000000000000"; --StoreWord
			mem(24)<="10000000000000000000000000000000"; --LoadWord 

			 addr:=pc_address;
				if((clk'event) and (clk='1'))then
					machine_code <= mem(addr);
				end if;
			
		end process;
		
end architecture MEM_Behavioral;