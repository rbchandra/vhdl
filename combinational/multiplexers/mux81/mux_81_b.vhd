library ieee;
use ieee.std_logic_1164.all;

entity mux_81 is
port(d: in bit_vector(7 downto 0);
s: in bit_vector(2 downto 0);
y: out bit);
end entity;

architecture logic of mux_81 is

component mux_41_s is
port(s: in bit_vector(1 downto 0);
d: in bit_vector(3 downto 0);
y: out bit);
end component;

component mux_2_1_s is
port(s: in bit;
d: in bit_vector(1 downto 0);
y: out bit);
end component;

signal w: bit_vector(1 downto 0);
begin

mux_41_1: mux_41_s port map(s(1 downto 0),d(3 downto 0),w(0));
mux_41_2: mux_41_s port map(s(1 downto 0),d(7 downto 4),w(1));
mux_21_1: mux_2_1_s port map(s(2),w(1 downto 0),y);

end architecture;
