LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ReadKbdKeys_tb IS
END ReadKbdKeys_tb;
 
ARCHITECTURE behavior OF ReadKbdKeys_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ReadKbdKeys
    PORT(
         DO : IN  std_logic_vector(7 downto 0);
         Clk : IN  std_logic;
			Reset : IN std_logic;
         DO_Rdy : IN  std_logic;
         F : IN  std_logic;
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DO : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal DO_Rdy : std_logic := '0';
   signal F : std_logic := '0';
	signal Reset : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ReadKbdKeys PORT MAP (
          DO => DO,
          Clk => Clk,
			 Reset => Reset,
          DO_Rdy => DO_Rdy,
          F => F,
          Y => Y
        );
	
	clock_proc : process
	begin
			Clk <= '0';
			wait for 10 ns;
			Clk <= '1';
			wait for 10 ns;   
	end process;
    -- Stimulus process
   stim_proc: process
   begin		
		Reset <= '1';
		Reset <= '0' after 10 ns;
      wait for 10 ns;
		DO_Rdy <= '1';
		DO_Rdy <= '0' after 10 ns;
		DO <= X"1A";
      DO <= X"00" after 20 ns;
		wait for 60ns;
		F <= '1';
      F <= '0' after 10 ns;
      wait;
   end process;
END;
