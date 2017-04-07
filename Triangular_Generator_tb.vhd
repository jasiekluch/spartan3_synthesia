LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Triangular_Generator_tb IS
END Triangular_Generator_tb;
 
ARCHITECTURE behavior OF Triangular_Generator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Triangular_Generator
    PORT(
         Clk_in : IN  std_logic;
         Reset : IN  std_logic;
         Wave_out : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_in : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Wave_out : std_logic_vector(8 downto 0);

   -- Clock period definitions
   constant Clk_in_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Triangular_Generator PORT MAP (
          Clk_in => Clk_in,
          Reset => Reset,
          Wave_out => Wave_out
        );

   -- Clock process definitions
   Clk_in_process :process
   begin
		Clk_in <= '0';
		wait for Clk_in_period/2;
		Clk_in <= '1';
		wait for Clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_in_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
