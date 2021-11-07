library ieee;
use ieee.std_logic_1164.all;

entity half_sb_s is
port(a,b: in bit;
d,bor: out bit);
end entity;

architecture logic of half_sb_s is

component xor_gate is
port(a,b: in bit;
c: out bit);
end component;

component and_gate is
port(a,b: in bit;
c: out bit);
end component;

signal w1: bit;

begin

w1 <= not a;
xor1: xor_gate port map(a,b,d);
and1: and_gate port map(w1,b,bor);

end architecture;
