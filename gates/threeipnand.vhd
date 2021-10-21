library ieee;
use ieee.std_logic_1164.all;

entity threenand is
port(
a,b,c: in bit;
o:out bit;
end threenand;

architecture logic of threenand is
begin
o <= not(a and b and c);
end logic;

