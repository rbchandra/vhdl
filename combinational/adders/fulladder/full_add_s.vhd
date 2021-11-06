library ieee;
use ieee.std_logic_1164.all;

entity full_add_s is
port(a,b,c: in bit;
s,cout: out bit);
end entity;

architecture logic of full_add_s is 

component xor_gate is
port(a,b: in bit;
c: out bit);
end component;

component and_gate is
port(a,b: in bit;
c: out bit);
end component;

component or_gate is
port(a,b: in bit;
c: out bit);
end component;

signal w1,w2,w3,w4,w5: bit;

begin

xor1: xor_gate port map(a,b,w1);
xor2: xor_gate port map(w1,c,s);
and1: and_gate port map(a,b,w2);
and2: and_gate port map(a,c,w3);
and3: and_gate port map(b,c,w4);
or1: or_gate port map(w2,w3,w5);
or2: or_gate port map(w4,w5,cout);



end architecture;
