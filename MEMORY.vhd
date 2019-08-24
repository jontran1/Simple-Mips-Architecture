library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MEMORY is

Port
		(mem_write, mem_read: in std_logic;
		 clk       : in std_logic;
		 Address   : in integer;
		 write_data: in STD_LOGIC_VECTOR(31 downto 0);
		 read_data : out STD_LOGIC_VECTOR(31 downto 0));
end MEMORY;


architecture MEM_Behavioral of MEMORY is
	
type array_WORD is array (0 to 255) of std_logic_vector(31 downto 0);
signal Ram:array_WORD;	
	
begin
	process(clk,mem_write,mem_read,Address)
	
	variable ram_addr: integer;
		begin
		 ram_addr:=Address;
			if(mem_write='1')then
				if((clk'event) and (clk='1'))then
					Ram(ram_addr)<=write_data;
				end if;
			end if;
			if(mem_read='1')then
					read_data<=Ram(ram_addr);	
			end if;
		end process;
		
end architecture MEM_Behavioral;