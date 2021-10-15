library ieee;
use ieee.std_logic_1164.all;

entity xnor_gate is
port(a,b: in bit;
c: out bit);
end entity;

architecture logic of xnor_gate is

begin

c <= a xnor b;

end architecture;


