----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:14:04 03/09/2017 
-- Design Name: 
-- Module Name:    Frequency_Divider - Behavioral 
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

entity Frequency_Divider is
    Port ( Clk_in : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk_out : out  STD_LOGIC);
end Frequency_Divider;

architecture Behavioral of Frequency_Divider is

	signal temp 	: STD_LOGIC;
	signal counter : integer range 0 to 781 :=0;

begin

	process(Reset, Clk_in)
	begin
		if (Reset = '1') then
			temp <= '0';
			counter <= 0;
		elsif Clk_in'Event and Clk_in = '1' then
			if (counter = 391) then
				temp <= not(temp);
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;
	
	Clk_out <= temp;

end Behavioral;

