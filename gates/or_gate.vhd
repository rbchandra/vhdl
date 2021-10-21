library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
port(a,b: in bit;
c: out bit);
end entity;

architecture logic of or_gate is
begin
process(a)
begin
c <= a and b after 5 ns;
end process;
end architecture;
