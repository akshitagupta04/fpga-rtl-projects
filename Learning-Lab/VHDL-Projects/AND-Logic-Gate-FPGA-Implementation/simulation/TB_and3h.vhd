library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity TB_and3h is
--empty
end TB_and3h;

architecture rtl of TB_and3h is
--Component declaration for Unit Under Test (UUT)
component and3h
port(
a : in std_logic;
b : in std_logic;
y : out std_logic
);
end component;

--internal signal declaration
signal a,b : std_logic;
signal y : std_logic;

begin
--instantiate the unit under test
and3h_port: and3h port map(
a => a,
b => b,
y => y
);

tb: process
begin

--test case 1
a <= '0';
b <= '0';
wait for 200ns;

--test case 2
a <= '0';
b <= '1';
wait for 200ns;

--test case 3
a <= '1';
b <= '0';
wait for 200ns;

--test case 4
a <= '1';
b <= '1';
wait for 200ns;
--terminate simulation
assert false;
    report "Simulation Completed"
severity failure;
end process tb;
end rtl;
