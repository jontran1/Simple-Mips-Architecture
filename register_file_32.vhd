library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register_file_32 is 
	port ( read0, read1, write0 	: in STD_LOGIC_VECTOR(4 downto 0);
			 data_in 					: in STD_LOGIC_VECTOR(31 downto 0);
			 write_in					: in std_logic;
			 clk							: in std_logic;
			 reset						: in std_logic;
			 data0,data1			 	: out STD_LOGIC_VECTOR(31 downto 0));
	end register_file_32;
			
architecture Behavioral of register_file_32 is
	
	component D_FlipFlop_32
    Port ( D  		: in STD_LOGIC_VECTOR(31 downto 0);  
           clk		: in std_logic;
			  e		: in std_logic;
			  reset	: in std_logic;
			  Q	 	: out STD_LOGIC_VECTOR(31 downto 0));
	end component;
		
	component decode_5to32
	    Port ( A 	: in  STD_LOGIC_VECTOR (4 downto 0);   
				  X 	: out STD_LOGIC_VECTOR (31 downto 0));   
	end component;
	
	signal out_read0, out_read1, out_write0			: STD_LOGIC_VECTOR (31 downto 0);

	signal 
	wtemp_Q0, wtemp_Q1,wtemp_Q2,wtemp_Q3,wtemp_Q4,wtemp_Q5,wtemp_Q6,
	wtemp_Q7,wtemp_Q8,wtemp_Q9,wtemp_Q10,wtemp_Q11,wtemp_Q12,wtemp_Q13,
	wtemp_Q14,wtemp_Q15,wtemp_Q16,wtemp_Q17,wtemp_Q18, wtemp_Q19,wtemp_Q20,
	wtemp_Q21,wtemp_Q22,wtemp_Q23,wtemp_Q24,wtemp_Q25,wtemp_Q26,wtemp_Q27,
	wtemp_Q28,wtemp_Q29,wtemp_Q30,wtemp_Q31	: STD_LOGIC_VECTOR (31 downto 0);
	
 	
	begin
			
		decoder_write0 : decode_5to32
			port map(write0,out_write0);	
		Register4 : D_FlipFlop_32
			port map("00000000000000000000000000000101", clk, '1', reset, wtemp_Q4);	
		Register5 : D_FlipFlop_32
			port map("00000000000000000000000000001010", clk, '1', reset, wtemp_Q5);	
		
		
		Register0 : D_FlipFlop_32
			port map(data_in, clk, out_write0(0) and write_in, reset, wtemp_Q0);
			
		Register1 : D_FlipFlop_32
			port map(data_in, clk, out_write0(1) and write_in, reset, wtemp_Q1);		
	
		Register2 : D_FlipFlop_32
			port map(data_in, clk, out_write0(2) and write_in, reset, wtemp_Q2);	
	
		Register3 : D_FlipFlop_32
			port map(data_in, clk, out_write0(3) and write_in, reset, wtemp_Q3);

			
			
			
			
			
						
		Register6 : D_FlipFlop_32
			port map(data_in, clk, out_write0(6) and write_in, reset, wtemp_Q6);			
			
		Register7 : D_FlipFlop_32
			port map(data_in, clk, out_write0(7) and write_in, reset, wtemp_Q7);			
						
		Register8 : D_FlipFlop_32
			port map(data_in, clk, out_write0(8) and write_in, reset, wtemp_Q8);			
			
		Register9 : D_FlipFlop_32
			port map(data_in, clk, out_write0(9) and write_in, reset, wtemp_Q9);			
			
		Register10 : D_FlipFlop_32
			port map(data_in, clk, out_write0(10) and write_in, reset, wtemp_Q10);			
			
		Register11 : D_FlipFlop_32
			port map(data_in, clk, out_write0(11) and write_in, reset, wtemp_Q11);			
			
		Register12 : D_FlipFlop_32
			port map(data_in, clk, out_write0(12) and write_in, reset, wtemp_Q12);	
			
		Register13 : D_FlipFlop_32
			port map(data_in, clk, out_write0(13) and write_in, reset, wtemp_Q13);			
						
		Register14 : D_FlipFlop_32
			port map(data_in, clk, out_write0(14) and write_in, reset, wtemp_Q14);
			
		Register15 : D_FlipFlop_32
			port map(data_in, clk, out_write0(15) and write_in, reset, wtemp_Q15);		
	
		Register16 : D_FlipFlop_32
			port map(data_in, clk, out_write0(16) and write_in, reset, wtemp_Q16);	
	
		Register17 : D_FlipFlop_32
			port map(data_in, clk, out_write0(17) and write_in, reset, wtemp_Q17);

		Register18 : D_FlipFlop_32
			port map(data_in, clk, out_write0(18) and write_in, reset, wtemp_Q18);			

		Register19 : D_FlipFlop_32
			port map(data_in, clk, out_write0(19) and write_in, reset, wtemp_Q19);			
						
		Register20 : D_FlipFlop_32
			port map(data_in, clk, out_write0(20) and write_in, reset, wtemp_Q20);			
			
		Register21 : D_FlipFlop_32
			port map(data_in, clk, out_write0(21) and write_in, reset, wtemp_Q21);			
						
		Register22 : D_FlipFlop_32
			port map(data_in, clk, out_write0(22) and write_in, reset, wtemp_Q22);			
			
		Register23 : D_FlipFlop_32
			port map(data_in, clk, out_write0(23) and write_in, reset, wtemp_Q23);			
			
		Register24 : D_FlipFlop_32
			port map(data_in, clk, out_write0(24) and write_in, reset, wtemp_Q24);			
			
		Register25 : D_FlipFlop_32
			port map(data_in, clk, out_write0(25) and write_in, reset, wtemp_Q25);			
			
		Register26 : D_FlipFlop_32
			port map(data_in, clk, out_write0(26) and write_in, reset, wtemp_Q26);	
			
		Register27 : D_FlipFlop_32
			port map(data_in, clk, out_write0(27) and write_in, reset, wtemp_Q27);			

		Register28 : D_FlipFlop_32
			port map(data_in, clk, out_write0(28) and write_in, reset, wtemp_Q28);			
			
		Register29 : D_FlipFlop_32
			port map(data_in, clk, out_write0(29) and write_in, reset, wtemp_Q29);			
						
		Register30 : D_FlipFlop_32
			port map(data_in, clk, out_write0(30) and write_in, reset, wtemp_Q30);			
			
		Register31 : D_FlipFlop_32
			port map(data_in, clk, out_write0(31) and write_in, reset, wtemp_Q31);		
			
			process(read0,read1)
			begin
			
				case read0 is
					when "00000" => data0 <= wtemp_Q0;
					when "00001" => data0 <= wtemp_Q1;
					when "00010" => data0 <= wtemp_Q2;
					when "00011" => data0 <= wtemp_Q3;
					
					when "00100" => data0 <= wtemp_Q4;
					when "00101" => data0 <= wtemp_Q5;
					when "00110" => data0 <= wtemp_Q6;
					when "00111" => data0 <= wtemp_Q7;
					
					when "01000" => data0 <= wtemp_Q8;
					when "01001" => data0 <= wtemp_Q9;
					when "01010" => data0 <= wtemp_Q10;
					when "01011" => data0 <= wtemp_Q11;
					
					when "01100" => data0 <= wtemp_Q12;
					when "01101" => data0 <= wtemp_Q13;
					when "01110" => data0 <= wtemp_Q14;
					when "01111" => data0 <= wtemp_Q15;
					
					when "10000" => data0 <= wtemp_Q16;
					when "10001" => data0 <= wtemp_Q17;
					when "10010" => data0 <= wtemp_Q18;
					when "10011" => data0 <= wtemp_Q19;

					when "10100" => data0 <= wtemp_Q20;
					when "10101" => data0 <= wtemp_Q21;
					when "10110" => data0 <= wtemp_Q22;
					when "10111" => data0 <= wtemp_Q23;
					
					when "11000" => data0 <= wtemp_Q24;
					when "11001" => data0 <= wtemp_Q25;
					when "11010" => data0 <= wtemp_Q26;
					when "11011" => data0 <= wtemp_Q27;
					
					when "11100" => data0 <= wtemp_Q28;
					when "11101" => data0 <= wtemp_Q29;
					when "11110" => data0 <= wtemp_Q30;
					when "11111" => data0 <= wtemp_Q31;
				end case;		
			
		
				case read1 is
					when "00000" => data1 <= wtemp_Q0;
					when "00001" => data1 <= wtemp_Q1;
					when "00010" => data1 <= wtemp_Q2;
					when "00011" => data1 <= wtemp_Q3;
					
					when "00100" => data1 <= wtemp_Q4;
					when "00101" => data1 <= wtemp_Q5;
					when "00110" => data1 <= wtemp_Q6;
					when "00111" => data1 <= wtemp_Q7;
					
					when "01000" => data1 <= wtemp_Q8;
					when "01001" => data1 <= wtemp_Q9;
					when "01010" => data1 <= wtemp_Q10;
					when "01011" => data1 <= wtemp_Q11;
					
					when "01100" => data1 <= wtemp_Q12;
					when "01101" => data1 <= wtemp_Q13;
					when "01110" => data1 <= wtemp_Q14;
					when "01111" => data1 <= wtemp_Q15;
					
					when "10000" => data1 <= wtemp_Q16;
					when "10001" => data1 <= wtemp_Q17;
					when "10010" => data1 <= wtemp_Q18;
					when "10011" => data1 <= wtemp_Q19;

					when "10100" => data1 <= wtemp_Q20;
					when "10101" => data1 <= wtemp_Q21;
					when "10110" => data1 <= wtemp_Q22;
					when "10111" => data1 <= wtemp_Q23;
					
					when "11000" => data1 <= wtemp_Q24;
					when "11001" => data1 <= wtemp_Q25;
					when "11010" => data1 <= wtemp_Q26;
					when "11011" => data1 <= wtemp_Q27;
					
					when "11100" => data1 <= wtemp_Q28;
					when "11101" => data1 <= wtemp_Q29;
					when "11110" => data1 <= wtemp_Q30;
					when "11111" => data1 <= wtemp_Q31;
				end case;	
		end process;		


			
end Behavioral;