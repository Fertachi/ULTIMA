library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Main is
    port (
        
        Input_A            : in std_logic_vector(7 downto 0);
        Input_B            : in std_logic_vector(7 downto 0);
        Selector_Operacion : in std_logic_vector(1 downto 0);
		  NZVC_vector        : out std_logic_vector (3 downto 0);
		  unidades           : out std_logic_vector (6 downto 0);
        decenas            : out std_logic_vector (6 downto 0)
        
    );
end entity Main;

architecture Main_arq of Main is

    component ALU
        port (
            Input_A : in std_logic_vector(7 downto 0);
            Input_B : in std_logic_vector(7 downto 0);
            Selector_Operacion : in std_logic_vector(1 downto 0);
            Output_Result : out std_logic_vector(7 downto 0);
            NZVC : out std_logic_vector(3 downto 0)
        );
    end component;

    component BCD
        port (
            IA : in std_logic;
            IB : in std_logic;
            IC : in std_logic;
            ID : in std_logic;
            F : out std_logic_vector(6 downto 0)
        );
    end component;
	 
	 signal Output_Result   : std_logic_vector (7 downto 0);

begin

   
    Port_ALU : ALU port map (Input_A, Input_B, Selector_Operacion, Output_Result, NZVC_vector);

    BCD_1 : BCD port map (Output_Result(7), Output_Result(6), Output_Result(5), Output_Result(4), decenas); 
    BCD_2 : BCD port map (Output_Result(3), Output_Result(2), Output_Result(1), Output_Result(0), unidades); 

end architecture Main_arq;
