--------------------------------------------------------%
-- MULTIPLEXADOR 8BITS                                  %
-- Entradas: e1, e2, e3, e4, e5, e6, e7, e8 e sel       %
-- Saidas: s                                            %
-- Dependencias: NULL                                   %
--------------------------------------------------------% 
library ieee;
use ieee.std_logic_1164.all;
entity mult8x1 is
port (e1, e2, e3, e4, e5, e6, e7, e8: in std_logic_vector (7 downto 0);
      sel: in std_logic_vector (2 downto 0);
      s: out std_logic_vector (7 downto 0);
      opc: in std_logic);
end mult8x1;
architecture arch_mult8x1 of mult8x1 is
begin
process(opc, sel, e1, e2, e3, e4, e5, e6, e7, e8)
  begin
  if (opc = '0' and sel = "000") then
    	s <= e1;
  elsif(opc = '0' and sel = "001") then
        s <= e2;
  elsif(opc = '0' and sel = "010") then      
        s <= e3;
  elsif(opc = '0' and sel = "011") then  
        s <= e4;
  elsif(opc = '0' and sel = "100") then 
        s <= e5;
  elsif(opc = '0' and sel = "101") then 
        s <= e6;
  elsif(opc = '0' and sel = "110") then 
         s <= e7;
  elsif(opc = '0' and sel = "111") then 
         s <= e8;
  end if;
end process;
end arch_mult8x1;