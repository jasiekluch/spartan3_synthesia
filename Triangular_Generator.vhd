----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:15 03/09/2017 
-- Design Name: 
-- Module Name:    Triangular_Generator - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Triangular_Generator is
    Port ( Clk_in : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Wave_out : out  STD_LOGIC_VECTOR (7 downto 0));
end Triangular_Generator;

architecture Behavioral of Triangular_Generator is

	signal counter : integer range 0 to 255 := 0;
	signal step 	: integer range -1 to 1 := 1;
begin
	process(Reset, Clk_in)
	begin
		if (Reset = '1') then
			counter <= 0;
			step <= 1;
		elsif Clk_in'Event and Clk_in = '1' then
			if (counter = 255) then
				step <= -1;
			elsif (counter = 0) then
				step <= 1;
			end if;
			counter <= counter + step;
		end if;
	end process;

	Wave_out <= std_logic_vector(to_unsigned(counter,8));

end Behavioral;

