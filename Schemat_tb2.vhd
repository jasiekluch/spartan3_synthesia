-- Vhdl test bench created from schematic C:\.Xilinx\Aksamski Luch Projekt Synthesia\UCiSW2\Projekt\Organy\Schemat.sch - Fri Mar 10 10:18:57 2017
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Schemat_Schemat_sch_tb IS
END Schemat_Schemat_sch_tb;
ARCHITECTURE behavioral OF Schemat_Schemat_sch_tb IS 

   COMPONENT Schemat
   PORT( CLK_50MHz	:	IN	STD_LOGIC; 
          Reset	:	IN	STD_LOGIC; 
          Wave_out	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
          SPI_MOSI	:	OUT	STD_LOGIC; 
          SPI_MISO	:	IN	STD_LOGIC; 
          SPI_SCK	:	OUT	STD_LOGIC; 
          DAC_CS	:	OUT	STD_LOGIC; 
          DAC_CLR	:	OUT	STD_LOGIC; 
          SPI_SS_B	:	OUT	STD_LOGIC; 
          AMP_CS	:	OUT	STD_LOGIC; 
          AD_CONV	:	OUT	STD_LOGIC; 
          SF_CE0	:	OUT	STD_LOGIC; 
          FPGA_INIT_B	:	OUT	STD_LOGIC; 
          Ts_out	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL CLK_50MHz	:	STD_LOGIC;
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL Wave_out	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL SPI_MOSI	:	STD_LOGIC;
   SIGNAL SPI_MISO	:	STD_LOGIC;
   SIGNAL SPI_SCK	:	STD_LOGIC;
   SIGNAL DAC_CS	:	STD_LOGIC;
   SIGNAL DAC_CLR	:	STD_LOGIC;
   SIGNAL SPI_SS_B	:	STD_LOGIC;
   SIGNAL AMP_CS	:	STD_LOGIC;
   SIGNAL AD_CONV	:	STD_LOGIC;
   SIGNAL SF_CE0	:	STD_LOGIC;
   SIGNAL FPGA_INIT_B	:	STD_LOGIC;
   SIGNAL Ts_out	:	STD_LOGIC;

BEGIN

   UUT: Schemat PORT MAP(
		CLK_50MHz => CLK_50MHz, 
		Reset => Reset, 
		Wave_out => Wave_out, 
		SPI_MOSI => SPI_MOSI, 
		SPI_MISO => SPI_MISO, 
		SPI_SCK => SPI_SCK, 
		DAC_CS => DAC_CS, 
		DAC_CLR => DAC_CLR, 
		SPI_SS_B => SPI_SS_B, 
		AMP_CS => AMP_CS, 
		AD_CONV => AD_CONV, 
		SF_CE0 => SF_CE0, 
		FPGA_INIT_B => FPGA_INIT_B, 
		Ts_out => Ts_out
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
   
        Reset <= '1';
        wait for 50ns;
        Reset <= '0';
     
    for i in 0 to 800000 loop
      
      Clk_50MHz <= '0';
      wait for 10ns;
      Clk_50MHz <= '1';
      wait for 10ns;
      
    end loop;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
