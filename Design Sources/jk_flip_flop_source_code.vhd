----------------------------------------------------------------------------------
-- Younes Ouhra
-- Praktikum Digitaltechnik
-- OTH Regensburg
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity JK_flip_flop is

    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end JK_flip_flop;

architecture Behavioral of JK_flip_flop is
--

--
begin 
    process (CLK)
    variable Qn : std_logic;
    begin
    
    if (rising_edge(CLK)) then
    
        if(J = '0' and K = '0' ) then
        --vorheriger Zustand
        Qn := Qn;
        
        elsif(J = '0' and K = '1' )then
        Qn := '0';
        
        elsif(J = '1' and K = '0' )then
        Qn := '1';
        
        elsif(J = '1' and K = '1' )then
        --Toggle
        Qn := NOT Qn;
        else null;
        
        end if;
    end if;
    Q <= Qn;

end process;
end Behavioral;
