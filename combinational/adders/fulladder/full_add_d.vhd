library ieee;
use ieee.std_logic_1164.all;

entity full_add_d is
port(a,b,c: in bit;
s,cout: out bit);
end entity;

architecture logic of full_add_d is
begin

s <= a xor b xor c;
cout <= (a and b) or (b and c) or (a and c);

end architecture;
