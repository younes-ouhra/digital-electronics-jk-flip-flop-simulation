library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Aufgabe2_JK_tb is
end;

architecture bench of Aufgabe2_JK_tb is

  component Aufgabe2_JK
      Port ( J : in STD_LOGIC;
             K : in STD_LOGIC;
             CLK : in STD_LOGIC;
             Q : out STD_LOGIC);
  end component;

  signal J: STD_LOGIC;
  signal K: STD_LOGIC;
  signal CLK: STD_LOGIC;
  signal Q: STD_LOGIC;


    begin

    uut: Aufgabe2_JK
    port map   (J => J,
                K => K,
                CLK => CLK,
                Q => Q);

    stimulus: process
        begin
        
            CLK <= '0', '1' after 1ps, '0' after 2ps, '1' after 3ps, '0' after 4ps, '1' after 5ps, '0' after 6ps, '1' after 7ps, '0' after 8ps, '1' after 9ps, '0' after 10ps, '1' after 11ps, '0' after 12ps, '1' after 13ps, '0' after 14ps, '1' after 15ps;
            K <= '0', '1' after 2ps, '0' after 4ps, '1' after 6ps, '0' after 8ps, '1' after 10ps, '0' after 12ps, '1' after 14ps;
            J <= '0', '1' after 4ps, '0' after 8ps, '1' after 12ps;
            
            
            --CLK <= '0' after 8ps;
            --K <= '0' after 8ps;
            --J <= '0' after 8ps;
        
        wait;
    end process;

end;