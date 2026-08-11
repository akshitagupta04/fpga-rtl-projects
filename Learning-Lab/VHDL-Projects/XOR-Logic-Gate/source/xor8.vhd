library ieee;
use ieee.std_logic_1164.all;

entity xor8 is
port(
A,B: in std_logic;
Y: out std_logic
);
end entity;

architecture behavioural of xor8 is
begin
process(A,B)
begin
if(A=B)then
Y <= '0';
else
Y <= '1';
end if;
end process;
end behavioural;