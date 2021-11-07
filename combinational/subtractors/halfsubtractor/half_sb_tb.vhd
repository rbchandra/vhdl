library ieee;
use ieee.std_logic_1164.all;

entity half_sb_tb is
end entity;

architecture logic of half_sb_tb is

component half_sb_s is
port(a,b: in bit;
d,bor: out bit);
end component;

signal in1,in2,out1,out2: bit;
begin

HS: half_sb_s port map(in1,in2,out1,out2);

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
