library ieee;
use ieee.std_logic_1164.all;

entity full_sb_d is
port(a,b,bi: in bit;
d,bor: out bit);
end entity;

architecture logic of full_sb_d is

begin

d <= a xor b xor bi;
bor <= (b and bi) or ((not a) and (b or bi));

end architecture; 
