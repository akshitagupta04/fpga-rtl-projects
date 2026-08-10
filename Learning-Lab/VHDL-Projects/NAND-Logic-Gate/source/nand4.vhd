library ieee;
use ieee.std_logic_1164.all;

entity nand4 is
port(
A,B: in std_logic;
Y: out std_logic
);
end entity;

architecture dataflow of nand4 is
begin
Y <= A nand B;
end dataflow;