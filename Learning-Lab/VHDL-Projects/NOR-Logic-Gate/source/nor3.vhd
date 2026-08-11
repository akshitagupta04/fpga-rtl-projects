library ieee;
use ieee.std_logic_1164.all;

entity nor3 is
port(
A,B: in std_logic;
Y: out std_logic
);
end entity;

architecture behavioral of nor3 is
begin
process(A,B)
begin
if(A=B and A='0')then
Y <= '1';
else
Y <= '0';
end if;
end process;
end behavioral;