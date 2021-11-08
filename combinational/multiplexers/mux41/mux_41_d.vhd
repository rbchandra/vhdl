library ieee;
use ieee.std_logic_1164.all;

entity mux_41_d is
port(s: in bit_vector(1 downto 0);
b: in bit_vector(3 downto 0);
y: out bit);
end entity;

architecture logic of mux_41_d is

signal w1,w2: bit;

begin

w1 <= not s(0);
w2 <= not s(1);
y <=(b(0) and w1 and w2) or (b(1) and w2 and s(0)) or (b(2) and w1 and s(1)) or (b(3) and s(0) and s(1));

end architecture;
