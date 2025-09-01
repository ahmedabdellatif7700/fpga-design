library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Entity
entity Add4 IS PORT
  (
    data1, data2 : in std_logic_vector(3 downto 0);
    Cin          : in std_logic;
    Cout         : out std_logic;
    Sum          : out std_logic_vector(3 downto 0)
  );
end entity Add4;

-- Architecture
architecture RTL of Add4 is
  signal out5bit : std_logic_vector(4 downto 0);
begin
  -- Add the two 4-bit inputs and the carry-in
  out5bit <= ('0' & data1) + ('0' & data2) + Cin;

  -- Assign the 4-bit sum and carry-out
  Sum   <= out5bit(3 downto 0);
  Cout  <= out5bit(4);
end architecture RTL;
