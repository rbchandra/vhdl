library ieee;
use ieee.std_logic_1164.all;

entity nand_tb is
end entity;

architecture testbench of nand_tb is
component threnand is
port(a,b,c: in std_logic;
s: out std_logic);
end component;

signal a_in,b_in,c_in,s_out:std_logic;

begin

uut: threnand port map(a_in,b_in,c_in,s_out);

process
begin
a_in <= '0'; b_in <= '0'; c_in <= '0';
wait for 10 ns;
a_in <= '0'; b_in <= '0'; c_in <= '1';
wait for 10 ns;
a_in <= '0'; b_in <= '1'; c_in <= '0';
wait for 10 ns;
a_in <= '0'; b_in <= '1'; c_in <= '1';
wait for 10 ns;
a_in <= '1'; b_in <= '0'; c_in <= '0';
wait for 10 ns;
a_in <= '1'; b_in <= '0'; c_in <= '1';
wait for 10 ns;
a_in <= '1'; b_in <= '1'; c_in <= '0';
wait for 10 ns;
a_in <= '1'; b_in <= '1'; c_in <= '1';
wait for 10 ns;
end process;
end testbench;
