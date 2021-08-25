--------------------------------------------------------%
-- BANCO DE REGISTRADORES COMPLETO                      %
-- Entradas: CLK, RW, ENDERECO e ENTRADA                %
-- Saidas: SAIDA                                        %
-- Dependencias: BANCOREG, mult8x1 e demult8x1          %
--------------------------------------------------------%
library ieee;
use ieee.std_logic_1164.all;

entity BANCOCOMP is
port( CLK: in std_logic; -- 1 == bloqueia | 0 == desbloqueia
	  RW: in std_logic;  -- 1 == leitura  | 0 == escrita
      ENDERECO: in std_logic_vector (2 downto 0);
      ENTRADA: in std_logic_vector (7 downto 0);
      SAIDA: out std_logic_vector (7 downto 0));
end BANCOCOMP;

architecture arch_BANCOCOMP of BANCOCOMP is
component BANCOREG is
port(e1, e2, e3, e4, e5, e6, e7, e8: in std_logic_vector (7 downto 0);
      clk: in std_logic;
      s1, s2, s3, s4, s5, s6, s7, s8: out std_logic_vector (7 downto 0));
end component BANCOREG;

component mult8x1 is
port (e1, e2, e3, e4, e5, e6, e7, e8: in std_logic_vector (7 downto 0);
      sel: in std_logic_vector (2 downto 0);
      opc: in std_logic;
      s: out std_logic_vector (7 downto 0));
end component mult8x1;

component demult8x1 is
port (e:in std_logic_vector(7 downto 0);
     sel:in std_logic_vector(2 downto 0);
     opc: in std_logic;
     s1, s2, s3, s4, s5, s6, s7, s8: out std_logic_vector(7 downto 0));
end component demult8x1;

signal s1de_tb : std_logic_vector (7 downto 0);
signal s2de_tb : std_logic_vector (7 downto 0);
signal s3de_tb : std_logic_vector (7 downto 0);
signal s4de_tb : std_logic_vector (7 downto 0);
signal s5de_tb : std_logic_vector (7 downto 0);
signal s6de_tb : std_logic_vector (7 downto 0);
signal s7de_tb : std_logic_vector (7 downto 0);
signal s8de_tb : std_logic_vector (7 downto 0);

signal s1br_tb : std_logic_vector (7 downto 0);
signal s2br_tb : std_logic_vector (7 downto 0);
signal s3br_tb : std_logic_vector (7 downto 0);
signal s4br_tb : std_logic_vector (7 downto 0);
signal s5br_tb : std_logic_vector (7 downto 0);
signal s6br_tb : std_logic_vector (7 downto 0);
signal s7br_tb : std_logic_vector (7 downto 0);
signal s8br_tb : std_logic_vector (7 downto 0);
begin

demult8x1_full : demult8x1
port map (e => ENTRADA,
		  sel => ENDERECO,
          opc => RW,
          s1 => s1de_tb, 
          s2 => s2de_tb, 
          s3 => s3de_tb, 
          s4 => s4de_tb, 
          s5 => s5de_tb, 
          s6 => s6de_tb, 
          s7 => s7de_tb,
          s8 => s8de_tb);
 
BANCOREG_full : BANCOREG
port map (e1 => s1de_tb,
          e2 => s2de_tb, 
          e3 => s3de_tb, 
          e4 => s4de_tb, 
          e5 => s5de_tb, 
          e6 => s6de_tb, 
          e7 => s7de_tb, 
          e8 => s8de_tb,
          clk => CLK,
          s1 => s1br_tb,
          s2 => s2br_tb,
          s3 => s3br_tb,
          s4 => s4br_tb,
          s5 => s5br_tb,
          s6 => s6br_tb,
          s7 => s7br_tb,
          s8 => s8br_tb);
          
mult8x1_full : mult8x1
port map (e1 => s1br_tb,
          e2 => s2br_tb, 
          e3 => s3br_tb, 
          e4 => s4br_tb, 
          e5 => s5br_tb, 
          e6 => s6br_tb, 
          e7 => s7br_tb, 
          e8 => s8br_tb,
          sel => ENDERECO,
          opc => RW,
          s => SAIDA);
end arch_BANCOCOMP;
