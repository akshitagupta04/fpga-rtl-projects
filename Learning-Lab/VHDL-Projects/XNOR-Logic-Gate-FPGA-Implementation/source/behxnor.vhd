library ieee;
use ieee.std_logic_1164.all;

entity behxnor is
port(
A,B: in std_logic;
Y: out std_logic
);
end entity;

architecture behavioural of behxnor is
begin
process(A,B)
begin
if(A=B)then
Y <= '1';
else
Y <= '0';
end if;
end process;
end behavioural;