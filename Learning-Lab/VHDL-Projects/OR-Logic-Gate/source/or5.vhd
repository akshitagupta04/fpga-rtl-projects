library ieee;
use ieee.std_logic_1164.all;

entity or5 is
port(a,b : in std_logic;
y : out std_logic);
end entity;

architecture dataflow of or5 is
begin
y<= a or b;
end architecture;