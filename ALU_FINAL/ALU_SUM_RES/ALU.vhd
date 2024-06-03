library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is 
    port (
        Input_A           : in  std_logic_vector (7 downto 0);
        Input_B           : in  std_logic_vector (7 downto 0);
        Selector_Operacion: in  std_logic_vector (1 downto 0);
        Output_Result     : out std_logic_vector (7 downto 0);
        NZVC              : out std_logic_vector (3 downto 0) 
    );
end ALU;

architecture ALU_arq of ALU is 
begin

    ALU_PROCESS: process (Input_A, Input_B, Selector_Operacion)
        variable Sum_unsigned: unsigned(8 downto 0);
    begin
        if (Selector_Operacion = "00") then
		  
            -- Suma 
            Sum_unsigned := unsigned('0' & Input_A) + unsigned('0' & Input_B);
            Output_Result <= std_logic_vector(Sum_unsigned(7 downto 0));

            ---(N)
            NZVC(3) <= Sum_unsigned(7);
			
            ---(Z)
            if (Sum_unsigned(7 downto 0) = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
			
            ---(V)
            if ((Input_A(7)='0' and Input_B(7)='0' and Sum_unsigned(7)='1') or (Input_A(7)='1' and Input_B(7)='1' and Sum_unsigned(7)='0')) then
                NZVC(1) <= '1';
            else
                NZVC(1) <= '0';
            end if;
			
            ---(C)
            NZVC(0) <= Sum_unsigned(8);
        elsif (Selector_Operacion = "01") then
		  
		  
            --- Resta
            Sum_unsigned := unsigned('0' & Input_A) - unsigned('0' & Input_B);
            Output_Result <= std_logic_vector(Sum_unsigned(7 downto 0));
			
            ---(N)
            NZVC(3) <= Sum_unsigned(7);
			
            ---(Z)
            if (Sum_unsigned(7 downto 0) = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
			
            ---(V)
            if ((Input_A(7)='0' and Input_B(7)='1' and Sum_unsigned(7)='1') or (Input_A(7)='1' and Input_B(7)='0' and Sum_unsigned(7)='0')) then
                NZVC(1) <= '1';
            else
                NZVC(1) <= '0';
            end if;
			
            ---(C)
            if unsigned(Input_A) < unsigned(Input_B) then
                NZVC(0) <= '1';
            else
                NZVC(0) <= '0';
            end if;
        end if;
    end process;
end ALU_arq;
