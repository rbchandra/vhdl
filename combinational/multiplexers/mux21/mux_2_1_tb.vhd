library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1_tb is
end entity;

architecture logic of mux_2_1_tb is

component mux_2_1_s is
port(s: in bit;
d: in bit_vector(1 downto 0);
y: out bit);
end component;

signal in1,out1: bit;
signal in2: bit_vector(1 downto 0);

begin

mul: mux_2_1_s port map(in1,in2,out1);

process
begin

in2 <= "00";
in1 <= '0';
wait for 10 ns;

in1 <= '1';
wait for 10 ns;

in2 <= "01";
in1 <= '0';
wait for 10 ns;

in1 <= '1';
wait for 10 ns;

in2 <= "10";
in1 <= '0';
wait for 10 ns;

in1 <= '1';
wait for 10 ns;

in2 <= "11";
in1 <= '0';
wait for 10 ns;

in1 <= '1';
wait for 10 ns;

end process;

end architecture;

