--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:13:45 05/17/2017
-- Design Name:   
-- Module Name:   C:/Users/dawid/Desktop/New folder/Synthesia/Synthesia_tb.vhd
-- Project Name:  Synthesia
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Synthesia
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY Synthesia_tb IS
END Synthesia_tb;
 
ARCHITECTURE behavior OF Synthesia_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Synthesia
    PORT(
         Clk_50MHz : IN  std_logic;
         Reset : IN  std_logic;
         x : IN  std_logic_vector(9 downto 0);
         y : IN  std_logic_vector(9 downto 0);
         RGB : OUT  std_logic_vector(2 downto 0);
         NoteOut : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50MHz : std_logic := '0';
   signal Reset : std_logic := '0';
   signal x : std_logic_vector(9 downto 0) := (others => '0');
   signal y : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal RGB : std_logic_vector(2 downto 0);
   signal NoteOut : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_50MHz_period : time := 20 ns;
	
	--zmienne pomocnicze
	signal x_count : integer range 0 to 800 := 0;
	signal y_count : integer range 0 to 600 := 0;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Synthesia PORT MAP (
          Clk_50MHz => Clk_50MHz,
          Reset => Reset,
          x => x,
          y => y,
          RGB => RGB,
          NoteOut => NoteOut
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		loop
			Clk_50MHz <= '0';
			wait for Clk_50MHz_period/2;
			Clk_50MHz <= '1';
			wait for Clk_50MHz_period/2;
			
			if(x_count = 800) then
				x_count <= 0;
				if(y_count = 600) then
					y_count <= 0;
				else
					y_count <= y_count + 1;
				end if;
			else
				x_count <= x_count + 1;
			end if;	

			x <= std_logic_vector(to_unsigned(x_count,10));
			y <= std_logic_vector(to_unsigned(y_count,10));
		end loop;
		
      wait;
   end process;

END;
