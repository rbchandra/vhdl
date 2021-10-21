library ieee;
use ieee.std_logic_1164.all;

entity nor_gate is
port(a,b: in bit;
c: out bit);
end entity;

architecture logic of nor_gate is

begin

c <= not(a or b);

end architecture;
