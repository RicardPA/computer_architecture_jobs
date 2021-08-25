--------------------------------------------------------%
-- REGISTRADOR 8BITS                                    %
-- Entradas: e1 e e2                                    %
-- Saidas: s                                            %
-- Dependencias: FFD                                    %
--------------------------------------------------------% 
library ieee;
use ieee.std_logic_1164.all;

entity REG8BITS is
port(e1: in std_logic_vector (7 downto 0);
     e2: in std_logic;
     s: out std_logic_vector (7 downto 0));
end REG8BITS;

architecture arch_REG8BITS of REG8BITS is
component FFD is
port(D: in std_logic;
     clk: in std_logic;
     Q: out std_logic);
end component FFD;
begin
REG8BITS : for i in 0 to 7 generate
  FFD_all : FFD
  port map (D => e1(i),
            clk => e2,
            Q => s(i));
end generate;
end arch_REG8BITS;