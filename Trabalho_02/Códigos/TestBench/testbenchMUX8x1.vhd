--------------------------------------------------------%
-- MULTIPLEXADOR 8BITS                                  %
-- Entradas: e1, e2, e3, e4, e5, e6, e7, e8 e sel       %
-- Saidas: s                                            %
-- Dependencias: NULL                                   %
--------------------------------------------------------%
library ieee;
use ieee.std_logic_1164.all;

entity mult8x1_tb is
end mult8x1_tb;

architecture testmult8x1 of mult8x1_tb is

component mult8x1
port (e1, e2, e3, e4, e5, e6, e7, e8: in std_logic_vector (7 downto 0);
      sel: in std_logic_vector (2 downto 0);
      s: out std_logic_vector (7 downto 0);
      opc: in std_logic);
end component;
signal e1_tb: std_logic_vector (7 downto 0);
signal e2_tb: std_logic_vector (7 downto 0);
signal e3_tb: std_logic_vector (7 downto 0);
signal e4_tb: std_logic_vector (7 downto 0);
signal e5_tb: std_logic_vector (7 downto 0);
signal e6_tb: std_logic_vector (7 downto 0);
signal e7_tb: std_logic_vector (7 downto 0);
signal e8_tb: std_logic_vector (7 downto 0);
signal sel_tb: std_logic_vector (2 downto 0);
signal s_tb: std_logic_vector (7 downto 0);
signal opc_tb: std_logic;
begin
uut: mult8x1 
port map(e1 => e1_tb,
         e2 => e2_tb,
         e3 => e3_tb,
         e4 => e4_tb,
         e5 => e5_tb,
         e6 => e6_tb,
         e7 => e7_tb,
         e8 => e8_tb,
         sel => sel_tb,
         s => s_tb,
         opc => opc_tb);
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
tb: process
begin
e1_tb <= "10101010";
e2_tb <= "10101010";
e3_tb <= "11111111";
e4_tb <= "10101010";
e5_tb <= "10101010";
e6_tb <= "10101010";
e7_tb <= "10101010";
e8_tb <= "10101010";
sel_tb <= "111";
opc_tb <= '0';
wait for 100 ns;

e1_tb <= "10101010";
e2_tb <= "10101010";
e3_tb <= "10101010";
e4_tb <= "10101010";
e5_tb <= "10101010";
e6_tb <= "00000000";
e7_tb <= "10101010";
e8_tb <= "10101010";
sel_tb <= "001";
opc_tb <= '1';
wait for 100 ns;
wait;
end process;
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
end testmult8x1;
