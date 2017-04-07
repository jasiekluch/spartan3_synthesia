--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:57:02 03/23/2017
-- Design Name:   
-- Module Name:   Z:/Desktop/UCiSW2/10.03/Organy/Sawtooth_Generator_tb.vhd
-- Project Name:  Organy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sawtooth_Generator
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
--USE ieee.numeric_std.ALL;
 
ENTITY Sawtooth_Generator_tb IS
END Sawtooth_Generator_tb;
 
ARCHITECTURE behavior OF Sawtooth_Generator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sawtooth_Generator
    PORT(
         Clk_in : IN  std_logic;
         Note_in : IN  std_logic_vector(3 downto 0);
         Wave_out : OUT  std_logic_vector(11 downto 0);
         Reset : IN  std_logic;
         Ts_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_in : std_logic := '0';
   signal Note_in : std_logic_vector(3 downto 0) := (others => '0');
   signal Reset : std_logic := '0';

 	--Outputs
   signal Wave_out : std_logic_vector(11 downto 0);
   signal Ts_out : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sawtooth_Generator PORT MAP (
          Clk_in => Clk_in,
          Note_in => Note_in,
          Wave_out => Wave_out,
          Reset => Reset,
          Ts_out => Ts_out
        );

 

    -- Stimulus process
   stim_proc: process
   begin		
        Reset <= '1';
        Reset <= '0' after 10ns;
     
    for i in 0 to 60000 loop
	 	Note_in <= "0000";
--		Note_in <= "0001";
--		Note_in <= "0010"; 
--		Note_in <= "0011"; 
--		Note_in <= "0100"; 
--		Note_in <= "0101"; 
--		Note_in <= "0110"; 
--		Note_in <= "0111"; 
--		Note_in <= "1000"; 
--		Note_in <= "1001"; 
--		Note_in <= "1010"; 
--		Note_in <= "1011"; 
--		Note_in <= "1100"; 


      Clk_in <= '0';
      wait for 10ns;
      Clk_in <= '1';
      wait for 10ns;
      
    end loop;

      wait;
   end process;


END;
