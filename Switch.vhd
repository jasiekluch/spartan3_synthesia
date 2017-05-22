----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:27:58 05/22/2017 
-- Design Name: 
-- Module Name:    Switch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Switch is
    Port ( RomNote : in  STD_LOGIC_VECTOR (3 downto 0);
           KeyNote : in  STD_LOGIC_VECTOR (3 downto 0);
           Note : out  STD_LOGIC_VECTOR (3 downto 0);
           KeyEN : in  STD_LOGIC;
           Pause : out  STD_LOGIC);
end Switch;

architecture Behavioral of Switch is
begin

   Note <= KeyNote when KeyEN = '1' else RomNote;
   Pause <= '1' when KeyEN = '1' else '0';
         
end Behavioral;

