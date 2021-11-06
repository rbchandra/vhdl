library ieee;
use ieee.std_logic_1164.all;

entity half_add_d is
port(a,b: in bit;
s,c: out bit);
end entity;

architecture logic of half_add_d is
begin

s <= a xor b;
c <= a and b;

end architecture;
