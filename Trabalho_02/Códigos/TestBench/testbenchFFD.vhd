--------------------------------------------------------%
-- Flip-Flop tipo D                                     %
-- Entradas: D e clk                                    %
-- Saidas: Q                                            %
-- Dependencias: NULL                                   %
--------------------------------------------------------% 
library ieee;
use ieee.std_logic_1164.all;

entity FFD_Tb is
end FFD_Tb;

architecture arch_FFD_Tb of FFD_Tb is

component FFD 
port(D: in std_logic;
     clk: in std_logic;
     Q: out std_logic);
end component;

signal D_tb: std_logic;
signal clk_tb: std_logic;
signal Q_tb: std_logic;

begin
uut: FFD
port map(D => D_tb,
         clk => clk_tb,
         Q => Q_tb);
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
tb: process
begin

D_tb <= '0';
clk_tb <= '1';
wait for 100 ns;

D_tb <= '1';
clk_tb <= '0';
wait for 100 ns;

D_tb <= '1';
clk_tb <= '1';
wait for 100 ns;

D_tb <= '0';
clk_tb <= '0';
wait for 100 ns;
wait;
end process;
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
end arch_FFD_Tb;