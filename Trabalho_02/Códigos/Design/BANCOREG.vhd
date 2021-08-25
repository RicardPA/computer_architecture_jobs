--------------------------------------------------------%
-- BANCO DE REGISTRADORES 8BITS                         %
-- Entradas: e1, e2, e3, e4, e5, e6, e7, e8 e clk       %
-- Saidas: s1, s2, s3, s4, s5, s6, s7, s8               %
-- Dependencias: REG8BITS                               %
--------------------------------------------------------% 
library ieee;
use ieee.std_logic_1164.all;

entity BANCOREG is
port(e1, e2, e3, e4, e5, e6, e7, e8: in std_logic_vector (7 downto 0);
      clk: in std_logic;
      s1, s2, s3, s4, s5, s6, s7, s8: out std_logic_vector (7 downto 0));
end BANCOREG;

architecture arch_BANCOREG of BANCOREG is
component REG8BITS is
  port(
  e1: in std_logic_vector (7 downto 0);
  e2: in std_logic;
  s: out std_logic_vector (7 downto 0));
end component REG8BITS;
begin
REG8BITS_1 : REG8BITS
port map (e1 => e1,
          e2 => clk,
          s => s1);
REG8BITS_2 : REG8BITS
port map (e1 => e2,
          e2 => clk,
          s => s2);
REG8BITS_3 : REG8BITS
port map (e1 => e3,
          e2 => clk,
          s => s3);
REG8BITS_4 : REG8BITS
port map (e1 => e4,
          e2 => clk,
          s => s4);
REG8BITS_5 : REG8BITS
port map (e1 => e5,
          e2 => clk,
          s => s5);
REG8BITS_6 : REG8BITS
port map (e1 => e6,
          e2 => clk,
          s => s6);
REG8BITS_7 : REG8BITS
port map (e1 => e7,
          e2 => clk,
          s => s7);
REG8BITS_8 : REG8BITS
port map (e1 => e8,
          e2 => clk,
          s => s8);
end arch_BANCOREG;