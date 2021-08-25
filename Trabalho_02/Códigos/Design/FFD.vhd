--------------------------------------------------------%
-- Flip-Flop tipo D                                     %
-- Entradas: D e clk                                    %
-- Saidas: Q                                            %
-- Dependencias: NULL                                   %
--------------------------------------------------------% 
library ieee;
use ieee.std_logic_1164.all;

entity FFD is 
  port( D: in std_logic;
  	clk: in std_logic;
  	Q: out std_logic);
end FFD;

architecture arch_ffD of FFD is
begin
  process (clk, D)
    begin
      if(clk'event and clk = '0') then
        Q <= D;
      end if;
  end process;
end arch_ffD;