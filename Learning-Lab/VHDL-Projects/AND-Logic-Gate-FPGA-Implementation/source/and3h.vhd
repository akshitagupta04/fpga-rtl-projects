library ieee;
use ieee.std_logic_1164.all;

entity and3h is
port(a,b : in std_logic;
y : out std_logic);
end entity;

architecture DataFlow of and3h is
begin
y <= a and b;
end architecture;
