library ieee;
use ieee.std_logic_1164.all;

entity half_add_tb is
end entity;

architecture logic of half_add_tb is

component half_add_s is
port(a,b: in bit;
s,c: out bit);
end component;

signal in1,in2,out1,out2: bit;
begin

HA: half_add_s port map(in1,in2,out1,out2);

process
begin

in1 <= '0';
in2 <= '0';
wait for 10 ns;

in1 <= '0';
in2 <= '1';
wait for 10 ns;

in1 <= '1';
in2 <= '0';
wait for 10 ns;

in1 <= '1';
in2 <= '1';
wait for 10 ns;

end process;
end architecture;
