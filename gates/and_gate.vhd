library ieee;
use ieee.std_logic_1164.all;
entity and_gate is
port(a,b:in bit;
     c:out bit);
end entity;
architecture logic of and_gate is
begin
c <= a and b;
end logic;

