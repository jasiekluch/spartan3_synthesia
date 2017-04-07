USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Frequency_Divider_tb IS
END Frequency_Divider_tb;
 
ARCHITECTURE behavior OF Frequency_Divider_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Frequency_Divider
    PORT(
         Clk_in : IN  std_logic;
         Reset : IN  std_logic;
         Clk_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_in : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Clk_out : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Frequency_Divider PORT MAP (
          Clk_in => Clk_in,
          Reset => Reset,
          Clk_out => Clk_out
        );
		  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Reset <= '1';
		wait for 20ns;
		Reset <= '0';
		for i in 0 to 30000 loop
		wait for 10ns;
		Clk_in <= '1';
		wait for 10ns;
		Clk_in <= '0';
		end loop;
		

      -- insert stimulus here 

      wait;
   end process;

END;
