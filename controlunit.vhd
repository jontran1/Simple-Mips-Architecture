library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlunit is
    port(opcode  : in std_logic_vector(5 downto 0);
	 RegDest, Jump, Branch, MemtoReg: out std_logic;
	 Alu, MemWrite, RegWrite: out std_logic;
	 MemRead, AluSrc: out std_logic );
	 
	 --Alu -> enable wire for 32 bit adder --
	 --the rest of output wires are to enable different mux--
	 
end controlunit;
	 
architecture behavoiralControl of controlunit is
begin

process (opcode)
	
	begin
   --R-type--000000
	if (opcode(0)='0' and opcode(1)='0' and opcode(2)='0' and opcode(3)='0' and opcode(4)='0' and opcode(5)='0') then 
	RegDest<='1'; 
	Jump<='0';
	Branch<='0'; 
	MemtoReg<='0';
	Alu<='0'; 
	MemWrite<='0'; 
	RegWrite<='1';
	MemRead<='0';
	AluSrc<='0';
	
	--Jump--000010/000011
	elsif((opcode(0)='0' or opcode(0)='1') and opcode(1)='1' and opcode(2)='0' and opcode(3)='0'and opcode(4)='0' and opcode(5)='0')
	then 
	RegDest<='1'; 
	Jump<='1'; 
	Branch<='0';
	MemtoReg<='0';
	Alu<='1'; 
	MemWrite<='0';
	RegWrite<='0';
	MemRead<='0';
	AluSrc<='0';
	
	--Branch on equal--000100
	elsif(opcode(0)='0' and opcode(1)='0' and opcode(2)='1' and opcode(3)='0' and opcode(4)='0' and opcode(5)='0') 
	then 
	RegDest<='0'; 
	Jump<='0'; 
	Branch<='1';
	MemtoReg<='0';
	Alu<='0';
	MemWrite<='0';
	RegWrite<='0';
	MemRead<='0';
	AluSrc<='0';
	
	--Branch on not equal--000101
	elsif(opcode(0)='1' and opcode(1)='0' and opcode(2)='1' and opcode(3)='0' and opcode(4)='0' and opcode(5)='0') 
	then 
	RegDest<='0'; 
	Jump<='0'; 
	Branch<='1';
	MemtoReg<='0';
	Alu<='0';
	MemWrite<='0';
	RegWrite<='0';
	MemRead<='0';
	AluSrc<='0';
	
	--Branch on less than or equal to zero --000110
	elsif(opcode(0)='0' and opcode(1)='1' and opcode(2)='1' and opcode(3)='0' and opcode(4)='0' and opcode(5)='0') 
	then 
	RegDest<='0'; 
	Jump<='0'; 
	Branch<='1'; 
	MemtoReg<='0';
	Alu<='0'; 
	MemWrite<='0'; 
	RegWrite<='0';
	MemRead<='0';
	AluSrc<='0';
	
	--Branch on greater than zero--000111
	elsif(opcode(0)='1' and opcode(1)='1' and opcode(2)='1' and opcode(3)='0' and opcode(4)='0' and opcode(5)='0') 
	then 
	RegDest<='0';
	Jump<='0'; 
	Branch<='1'; 
	MemtoReg<='0';
	Alu<='0'; 
	MemWrite<='0'; 
	RegWrite<='0';
	MemRead<='0';
	AluSrc<='0';
	
	--Branch on less than zero--and--Branch on Greater than or equal to Zero--000001
	elsif(opcode(0)='1' and opcode(1)='0' and  opcode(2)='1' and  opcode(3)='0' and  opcode(4)='0' and  opcode(5)='0') 
	then 
	RegDest<='0'; 
	Jump<='0'; 
	Branch<='0';
	MemtoReg<='0';
	Alu<='0'; 
	MemWrite<='0'; 
	RegWrite<='0';
	MemRead<='0';
	AluSrc<='0';
	
	--LoadWord--100000
	elsif(opcode(0)='0' and  opcode(1)='0' and  opcode(2)='0' and  opcode(3)='0' and  opcode(4)='0' and  opcode(5)='1') 
	then 
	RegDest<='0'; 
	Jump<='0'; 
	Branch<='0';
	MemtoReg<='1';
	Alu<='0'; 
	MemWrite<='0'; 
	RegWrite<='1';
	MemRead<='1';
	AluSrc<='1';
	
	--StoreWord--101011
	elsif(opcode(0)='1' and  opcode(1)='1' and  opcode(2)='0' and  opcode(3)='1' and  opcode(4)='0' and  opcode(5)='1') 
	then 
	RegDest<='0';
	Jump<='0'; 
	Branch<='0'; 
	MemtoReg<='1';
	Alu<='0';
	MemWrite<='1';
	RegWrite<='0';
	MemRead<='0';
	AluSrc<='1';
	
	--addimmediate--001001
	elsif(opcode(0)='0' and  opcode(1)='0' and  opcode(2)='0' and  opcode(3)='0' and  opcode(4)='0' and  opcode(5)='1') 
	then 
	RegDest<='0'; 
	Jump<='0'; 
	Branch<='0';
	MemtoReg<='0';
	Alu<='0'; 
	MemWrite<='0'; 
	RegWrite<='1';
	MemRead<='0';
	AluSrc<='1'; 
	
	--
	
	end if;

	
end process;
 

end behavoiralControl;
