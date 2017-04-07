--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:43:30 01/21/2017
-- Design Name:   
-- Module Name:   Z:/Desktop/UCiSW/Projects/24-01/vga/VGA_Driver_tb.vhd
-- Project Name:  vga
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA_Driver
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
use ieee.std_logic_textio.all;
use std.textio.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY VGA_Driver_tb IS
END VGA_Driver_tb;
 
ARCHITECTURE behavior OF VGA_Driver_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA_Driver
    PORT(
         RGB : IN  std_logic_vector(2 downto 0);
         clk_50 : IN  std_logic;
         R : OUT  std_logic;
         G : OUT  std_logic;
         B : OUT  std_logic;
         hs_out : OUT  std_logic;
         vs_out : OUT  std_logic;
         x : OUT  std_logic_vector(9 downto 0);
         y : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RGB : std_logic_vector(2 downto 0) := (others => '0');
   signal clk_50 : std_logic := '0';

 	--Outputs
   signal R : std_logic;
   signal G : std_logic;
   signal B : std_logic;
   signal hs_out : std_logic;
   signal vs_out : std_logic;
   signal x : std_logic_vector(9 downto 0);
   signal y : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_50_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA_Driver PORT MAP (
          RGB => RGB,
          clk_50 => clk_50,
          R => R,
          G => G,
          B => B,
          hs_out => hs_out,
          vs_out => vs_out,
          x => x,
          y => y
        );

   -- Clock process definitions
   clk_50_process :process
   begin
		clk_50 <= '0';
		wait for clk_50_period/2;
		clk_50 <= '1';
		wait for clk_50_period/2;
   end process;
 

  process 

begin
	wait for clk_50_period*20;
  wait;
end process;

END;
