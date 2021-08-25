--------------------------------------------------------%
-- DEMULTIPLEXADOR 8BITS                                %
-- Entradas: e e sel                                    %
-- Saidas: s1, s2, s3, s4, s5, s6, s7 e s8              %
-- Dependencias: NULL                                   %
--------------------------------------------------------% 
library ieee;
use ieee.std_logic_1164.all;

entity demult8x1 is
port(e:in std_logic_vector(7 downto 0);
     sel:in std_logic_vector(2 downto 0);
     s1, s2, s3, s4, s5, s6, s7, s8: out std_logic_vector(7 downto 0);
     opc: in std_logic);
end demult8x1;
architecture arch_demult8x1 of demult8x1 is
begin
process(opc, sel, e)
  begin
  if (opc = '1' and sel = "000") then
    	s1 <= e;
  elsif(opc = '1' and sel = "001") then
        s2 <= e;
  elsif(opc = '1' and sel = "010") then      
        s3 <= e;
  elsif(opc = '1' and sel = "011") then  
        s4 <= e;
  elsif(opc = '1' and sel = "100") then 
        s5 <= e;
  elsif(opc = '1' and sel = "101") then 
        s6 <= e;
  elsif(opc = '1' and sel = "110") then 
        s7 <= e;
  elsif(opc = '1' and sel = "111") then 
        s8 <= e;
  end if;
end process;
end arch_demult8x1;