library ieee;
use ieee.std_logic_1164.all;
entity and_gate_tb is
end entity;
architecture test_bench of and_gate_tb is
component and_gate is
port
(
a,b: in bit;
c: out bit
);
end component;
signal a_in,b_in,c_out: bit;

begin
UUT: and_gate port map(a_in,b_in,c_out);
process
begin
a_in <= '0'; b_in <= '0';
wait for 10 ns;
a_in <= '0'; b_in <= '1';
wait for 10 ns;
a_in <= '1'; b_in <= '0';
wait for 10 ns;
a_in <= '1'; b_in <= '1';
wait for 10 ns;
end process;
end architecture;

