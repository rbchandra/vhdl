library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
port(a,b: in bit;
c: out bit);
end entity;

architecture logic of xor_gate is
begin

c <= a xor b;

end architecture;


