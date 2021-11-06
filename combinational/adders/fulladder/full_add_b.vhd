library ieee;
use ieee.std_logic_1164.all;

entity full_add_b is
port(a,b,c : in bit;
s,cout: out bit);
end entity;

architecture logic of full_add_b is

begin

process(a,b,c)

begin

if a = '0' and b ='0' and c = '0' then s <= '0'; cout <='0';
elsif a = '0' and b ='0' and c = '1' then s <= '1'; cout <='0';
elsif a = '0' and b ='1' and c = '0' then s <= '1'; cout <='0';
elsif a = '0' and b ='1' and c = '1' then s <= '0'; cout <='1';
elsif a = '1' and b ='0' and c = '0' then s <= '1'; cout <='0';
elsif a = '1' and b ='0' and c = '1' then s <= '0'; cout <='1';
elsif a = '1' and b ='1' and c = '0' then s <= '0'; cout <='1';
elsif a = '1' and b ='1' and c = '1' then s <= '1'; cout <='1';

end if;
end process;
end architecture;
