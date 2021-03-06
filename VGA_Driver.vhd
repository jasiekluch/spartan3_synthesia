----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:06:27 01/21/2017 
-- Design Name: 
-- Module Name:    VGA_Driver - Behavioral 
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

entity VGA_Driver is
    Port ( RGB : in  STD_LOGIC_VECTOR (2 downto 0);
           Clk_50MHz : in  STD_LOGIC;
           R : out  STD_LOGIC;
           G : out  STD_LOGIC;
           B : out  STD_LOGIC;
           H_sync : out  STD_LOGIC;
           V_sync : out  STD_LOGIC;
           X : out  STD_LOGIC_VECTOR (9 downto 0);
           Y : out  STD_LOGIC_VECTOR (9 downto 0));
end VGA_Driver;

architecture Behavioral of VGA_Driver is

constant hpixels : integer := 1040;
constant vlines : integer := 666;
constant maxWidth : integer := 800;
constant maxHeight : integer := 600;

-- horizontal back porch
constant hbp : integer := 61;
-- horizontal front porch
constant hfp : integer := 53;
-- vertical back porch
constant vbp : integer := 21;
-- vertical front porch
constant vfp : integer := 35;
-- horizontal pulse width
constant hpw : integer := 120;
-- vertical pulse width
constant vpw : integer := 6;

signal clk_25 : std_logic;
signal hs : integer range 0 to 1040;
signal vs : integer range 0 to 666;
signal screenEnabled : boolean;

begin

-- synchronizacja okna	
	
	screen_sync: process(Clk_50MHz,hs,vs)
	begin

-- ustawianie sygnalu synchronizacji pionowej
		if hs > 0 and hs <= hpw then
			H_sync <= '0';
		else
			H_sync <= '1';
		end if;
-- ustawianie sygnalu synchronizacji poziomej	
		if vs > 0 and vs <= vpw then
			V_sync <= '0';
		else
			V_sync <= '1';
		end if;	

-- inkrementacja linii pionowej i poziomej
		if rising_edge(Clk_50MHz) then	
			if hs = 1040 then
				vs <= vs + 1;
				hs <= 0;
			else
				hs <= hs + 1;
			end if;		
			if vs = 666 then
				vs <= 0;
			end if;
		end if;
	end process;
	
	coordinates_feedback : process(hs,vs)
	begin
-- obliczanie zwracanej wartosci x oraz ustawianie flagi wyswietlania
		if hs >= (hpw + hbp) and hs < (hpixels - hfp) then
			X <= std_logic_vector(to_unsigned(hs - (hpw + hbp),10));
			screenEnabled <= true;
		else
			X <= std_logic_vector(to_unsigned(maxWidth,10));
			screenEnabled <= false;
		end if;
-- obliczanie zwracanej wartosci y oraz ustawianie flagi wyswietlania
		if vs >= (vpw + vbp) and vs < (vlines - vfp) then
			Y <= std_logic_vector(to_unsigned(vs - (vpw + vbp),10));
			screenEnabled <= true;
		else 
			Y <= std_logic_vector(to_unsigned(maxHeight,10));
			screenEnabled <= false;
		end if;
	end process;
	
-- sterowanie przesylaniem danych do wyswietlenia w zaleznosci od flagi screenEnabled
	display : process(screenEnabled, RGB)
	begin
		if screenEnabled then
			R <= RGB(0);
			G <= RGB(1);
			B <= RGB(2);
		else
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	end process;
	
		
end Behavioral;

