library ieee;
use ieee.std_logic_1164.all;

entity mux_41_b is
port(s: in bit_vector(1 downto 0);
b: in bit_vector(3 downto 0);
y: out bit);
end entity;

architecture logic of mux_41_b is

begin

y <= b(0) when s="00" else
     b(1) when s="01" else
     b(2) when s="10" else
     b(3) when s="11";

end architecture;
