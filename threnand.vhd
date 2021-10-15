library ieee;
use ieee.std_logic_1164.all;

entity threnand_gate is
port(
a,b,c:in std_logic;
s: out std_logic);
end entity;

architecture logic of threnand_gate is

begin

s <= not(a and b and c);
end logic;
