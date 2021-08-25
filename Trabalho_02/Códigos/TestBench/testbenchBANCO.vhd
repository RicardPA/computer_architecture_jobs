--------------------------------------------------------%
-- BANCO DE REGISTRADORES 8BITS                         %
-- Entradas: e1, e2, e3, e4, e5, e6, e7, e8 e clk       %
-- Saidas: s1, s2, s3, s4, s5, s6, s7, s8               %
-- Dependencias: REG8BITS                               %
--------------------------------------------------------% 
library ieee;
use ieee.std_logic_1164.all;

entity BANCOREG_Tb is
end BANCOREG_Tb;

architecture arch_BANCOREG_Tb of BANCOREG_Tb is

component BANCOREG is
port(e1, e2, e3, e4, e5, e6, e7, e8: in std_logic_vector (7 downto 0);
     clk: in std_logic;
     s1, s2, s3, s4, s5, s6, s7, s8: out std_logic_vector (7 downto 0));
end component;

signal e1_tb : std_logic_vector (7 downto 0);
signal e2_tb : std_logic_vector (7 downto 0);
signal e3_tb : std_logic_vector (7 downto 0);
signal e4_tb : std_logic_vector (7 downto 0);
signal e5_tb : std_logic_vector (7 downto 0);
signal e6_tb : std_logic_vector (7 downto 0);
signal e7_tb : std_logic_vector (7 downto 0);
signal e8_tb : std_logic_vector (7 downto 0);

signal s1_tb : std_logic_vector (7 downto 0);
signal s2_tb : std_logic_vector (7 downto 0);
signal s3_tb : std_logic_vector (7 downto 0);
signal s4_tb : std_logic_vector (7 downto 0);
signal s5_tb : std_logic_vector (7 downto 0);
signal s6_tb : std_logic_vector (7 downto 0);
signal s7_tb : std_logic_vector (7 downto 0);
signal s8_tb : std_logic_vector (7 downto 0);

signal clk_tb : std_logic;

begin
uut: BANCOREG
port map(e1 => e1_tb,
         e2 => e2_tb,
         e3 => e3_tb,
         e4 => e4_tb,
         e5 => e5_tb,
         e6 => e6_tb,
         e7 => e7_tb,
         e8 => e8_tb,
         clk => clk_tb,
         s1 => s1_tb,
         s2 => s2_tb,
         s3 => s3_tb,
         s4 => s4_tb,
         s5 => s5_tb,
         s6 => s6_tb,
         s7 => s7_tb,
         s8 => s8_tb);
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
Tb: process
begin
e1_tb <= "10101010";
e2_tb <= "10101010";
e3_tb <= "10101010";
e4_tb <= "10101010";
e5_tb <= "10101010";
e6_tb <= "10101010";
e7_tb <= "10101010";
e8_tb <= "10101010";
clk_tb <= '1';
wait for 100 ns;

e1_tb <= "01010101";
e2_tb <= "01010101";
e3_tb <= "01010101";
e4_tb <= "01010101";
e5_tb <= "01010101";
e6_tb <= "01010101";
e7_tb <= "01010101";
e8_tb <= "01010101";
clk_tb <= '0';
wait for 100 ns;
wait;
end process;
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
end arch_BANCOREG_Tb;