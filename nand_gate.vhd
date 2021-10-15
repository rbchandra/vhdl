library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
port(a,b: in bit;
c: out bit);
end entity;

architecture logic of nand_gate is

begin
c <= not(a and b);
end architecture;
