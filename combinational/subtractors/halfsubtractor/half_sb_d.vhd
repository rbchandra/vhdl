library ieee;
use ieee.std_logic_1164.all;

entity half_sb_d is
port(a,b: in bit;
d,bor: out bit);
end entity;

architecture logic of half_sb_d is
begin

d <= a xor b;
bor <= (not a) and b;

end architecture;
