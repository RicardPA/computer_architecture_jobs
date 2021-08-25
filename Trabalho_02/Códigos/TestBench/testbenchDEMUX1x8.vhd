--------------------------------------------------------%
-- DEMULTIPLEXADOR 8BITS                                %
-- Entradas: e e sel                                    %
-- Saidas: s1, s2, s3, s4, s5, s6, s7 e s8              %
-- Dependencias: NULL                                   %
--------------------------------------------------------%
library ieee;
use ieee.std_logic_1164.all;

entity demult8x1_tb is
end demult8x1_tb;

architecture testdemult8x1 of demult8x1_tb is

component demult8x1 
port (e:in std_logic_vector(7 downto 0);
     sel:in std_logic_vector(2 downto 0);
     opc: in std_logic;
     s1, s2, s3, s4, s5, s6, s7, s8: out std_logic_vector(7 downto 0));
end component;

signal s1_tb: std_logic_vector (7 downto 0);
signal s2_tb: std_logic_vector (7 downto 0);
signal s3_tb: std_logic_vector (7 downto 0);
signal s4_tb: std_logic_vector (7 downto 0);
signal s5_tb: std_logic_vector (7 downto 0);
signal s6_tb: std_logic_vector (7 downto 0);
signal s7_tb: std_logic_vector (7 downto 0);
signal s8_tb: std_logic_vector (7 downto 0);

signal sel_tb: std_logic_vector (2 downto 0);
signal e_tb: std_logic_vector (7 downto 0);
signal opc_tb: std_logic;
begin
uut: demult8x1 
port map(s1 => s1_tb,
         s2 => s2_tb,
         s3 => s3_tb,
         s4 => s4_tb,
         s5 => s5_tb,
         s6 => s6_tb,
         s7 => s7_tb,
         s8 => s8_tb,
         sel => sel_tb,
         e => e_tb, 
         opc => opc_tb);
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
tb: process
begin
e_tb <= "10101010";
sel_tb <= "001";
opc_tb <= '1';
wait for 100 ns;

e_tb <= "01010101";
sel_tb <= "001";
opc_tb <= '1';
wait for 100 ns;

e_tb <= "10101010";
sel_tb <= "110";
opc_tb <= '1';
wait for 100 ns;

e_tb <= "01010101";
sel_tb <= "110";
opc_tb <= '1';
wait for 100 ns;
wait;
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
end process;
end testdemult8x1;