library ieee;
use ieee.std_logic_1164.all;

entity full_sb_b is
port(a,b,bi : in bit;
d,bor: out bit);
end entity;

architecture logic of full_sb_b is

begin

process(a,b,bi)

begin

if a = '0' and b ='0' and bi = '0' then d <= '0'; bor <='0';
elsif a = '0' and b ='0' and bi = '1' then d <= '1'; bor <='1';
elsif a = '0' and b ='1' and bi = '0' then d <= '1'; bor <='1';
elsif a = '0' and b ='1' and bi = '1' then d <= '0'; bor <='1';
elsif a = '1' and b ='0' and bi = '0' then d <= '1'; bor <='0';
elsif a = '1' and b ='0' and bi = '1' then d <= '0'; bor <='0';
elsif a = '1' and b ='1' and bi = '0' then d <= '0'; bor <='0';
elsif a = '1' and b ='1' and bi = '1' then d <= '1'; bor <='1';

end if;
end process;
end architecture;
