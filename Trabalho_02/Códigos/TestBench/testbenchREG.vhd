--------------------------------------------------------%
-- REGISTRADOR 8BITS                                    %
-- Entradas: e1 e e2                                    %
-- Saidas: s                                            %
-- Dependencias: FFD                                    %
--------------------------------------------------------% 
library ieee;
use ieee.std_logic_1164.all;

entity REG8BITS_Tb is
end REG8BITS_Tb;

architecture arch_REG8BITS_Tb of REG8BITS_Tb is

component REG8BITS is
port(e1: in std_logic_vector (7 downto 0);
     e2: in std_logic;
     s: out std_logic_vector (7 downto 0));
end component;

signal e1_tb : std_logic_vector (7 downto 0);
signal e2_tb : std_logic;
signal s_tb : std_logic_vector (7 downto 0);

begin
uut: REG8BITS
port map(e1 => e1_tb,
         e2 => e2_tb,
         s => s_tb);
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
Tb: process
begin
e1_tb <= "01010101";
e2_tb <= '1';
wait for 100 ns;

e1_tb <= "10101010";
e2_tb <= '0';
wait for 100 ns;

e1_tb <= "11001100";
e2_tb <= '0';
wait for 100 ns;

e1_tb <= "00110011";
e2_tb <= '1';
wait for 100 ns;
wait;
end process;
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
end arch_REG8BITS_Tb;