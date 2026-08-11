library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity tb_xor8 is
--empty
end tb_xor8;

architecture rtl of tb_xor8 is
--Component declaration for Unit Under Test (UUT)
component xor8
port(
A : in std_logic;
B : in std_logic;
Y : out std_logic
);
end component;

--internal signal declaration
signal A,B : std_logic;
signal Y : std_logic;

begin
--instantiate the unit under test
xor8_port: xor8 port map(
A => A,
B => B,
Y => Y
);

tb: process
begin

--test case 1
A <= '0';
B <= '0';
wait for 100ns;

--test case 2
A <= '0';
B <= '1';
wait for 100ns;

--test case 3
A <= '1';
B <= '0';
wait for 100ns;

--test case 4
A <= '1';
B <= '1';
wait for 100ns;
--terminate simulation
assert false;
    report "Simulation Completed"
severity failure;
end process tb;
end rtl;