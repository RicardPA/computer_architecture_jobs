--------------------------------------------------------%
-- BANCO DE REGISTRADORES COMPLETO                      %
-- Entradas: CLK, RW, ENDERECO e ENTRADA                %
-- Saidas: SAIDA                                        %
-- Dependencias: BANCOREG, mult8x1 e demult8x1          %
--------------------------------------------------------%
library ieee;
use ieee.std_logic_1164.all;

entity BANCOCOMP_Tb is
end BANCOCOMP_Tb;

architecture arch_BANCOCOMP_Tb of BANCOCOMP_Tb is

component BANCOCOMP is
port( CLK: in std_logic;
	  RW: in std_logic;
      ENDERECO: in std_logic_vector (2 downto 0);
      ENTRADA: in std_logic_vector (7 downto 0);
      SAIDA: out std_logic_vector (7 downto 0));
end component;

signal CLK_tb : std_logic;
signal RW_tb : std_logic;
signal ENDERECO_tb : std_logic_vector (2 downto 0);
signal ENTRADA_tb : std_logic_vector (7 downto 0);
signal SAIDA_tb : std_logic_vector (7 downto 0);

begin
uut: BANCOCOMP
port map(CLK => CLK_tb,
         RW => RW_tb,
         ENDERECO => ENDERECO_tb,
         ENTRADA => ENTRADA_tb,
         SAIDA => SAIDA_tb);
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
CLK : process
begin
	for i in 0 to 1000 loop
        CLK_tb <= '1';
        wait for 3 ns;
        CLK_tb <= '0';
        wait for 3 ns;
    end loop;
    wait;
end process;
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
Tb: process
begin
RW_tb <= '1';
ENDERECO_tb <= "001";
ENTRADA_tb <= "01010101";
wait for 100 ns;


RW_tb <= '1';
ENDERECO_tb <= "010";
ENTRADA_tb <= "01010101";
wait for 100 ns;


RW_tb <= '1';
ENDERECO_tb <= "011";
ENTRADA_tb <= "11111111";
wait for 100 ns;


RW_tb <= '1';
ENDERECO_tb <= "100";
ENTRADA_tb <= "00001111";
wait for 100 ns;


RW_tb <= '1';
ENDERECO_tb <= "101";
ENTRADA_tb <= "01011111";
wait for 100 ns;


RW_tb <= '1';
ENDERECO_tb <= "110";
ENTRADA_tb <= "01010101";
wait for 100 ns;


RW_tb <= '1';
ENDERECO_tb <= "111";
ENTRADA_tb <= "01010101";
wait for 100 ns;


RW_tb <= '0';
ENDERECO_tb <= "000";
ENTRADA_tb <= "11111111";
wait for 100 ns;


RW_tb <= '0';
ENDERECO_tb <= "001";
ENTRADA_tb <= "00001111";
wait for 100 ns;


RW_tb <= '0';
ENDERECO_tb <= "010";
ENTRADA_tb <= "01011111";
wait for 100 ns;

RW_tb <= '0';
ENDERECO_tb <= "011";
ENTRADA_tb <= "11111111";
wait for 100 ns;


RW_tb <= '0';
ENDERECO_tb <= "100";
ENTRADA_tb <= "00001111";
wait for 100 ns;


RW_tb <= '0';
ENDERECO_tb <= "101";
ENTRADA_tb <= "01011111";
wait for 100 ns;


RW_tb <= '0';
ENDERECO_tb <= "110";
ENTRADA_tb <= "01010101";
wait for 100 ns;


RW_tb <= '0';
ENDERECO_tb <= "111";
ENTRADA_tb <= "01010101";
wait for 100 ns;
wait;
end process;
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
end arch_BANCOCOMP_Tb;