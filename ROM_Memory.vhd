----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:16 05/03/2017 
-- Design Name: 
-- Module Name:    ROM_Memory - Behavioral 
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
use ieee.std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_Memory is
port (CLK : in std_logic;
      EN : in std_logic;
      ADDR : in std_logic_vector(5 downto 0);
      DATA : out std_logic_vector(19 downto 0));
end ROM_Memory;


architecture syn of ROM_Memory is

function note(pitch: std_logic_vector(3 downto 0);
				duration: std_logic_vector(1 downto 0))
						return std_logic_vector(19 downto 0) is
		variable tmp : std_logic_vector := X"00000";
	begin 
		tmp := "00000000000000" & duration & pitch;
		return tmp;
	end note;

	-- Inicjalizacja dzwiekow jako stalych w celu latwego generowania melodii w przyszlosci
	constant pause : std_logic_vector (3 downto 0) := "0000" ;
	constant c1	   : std_logic_vector (3 downto 0) := "0001" ;
	constant cis1	: std_logic_vector (3 downto 0) := "0010" ;
	constant d1	   : std_logic_vector (3 downto 0) := "0011" ;
	constant dis1  : std_logic_vector (3 downto 0) := "0100" ;
	constant e1	   : std_logic_vector (3 downto 0) := "0101" ;
	constant f1	   : std_logic_vector (3 downto 0) := "0110" ;
	constant fis1  : std_logic_vector (3 downto 0) := "0111" ;
	constant g1	   : std_logic_vector (3 downto 0) := "1000" ;
	constant gis1  : std_logic_vector (3 downto 0) := "1001" ;
	constant a1	   : std_logic_vector (3 downto 0) := "1010" ;
	constant b1	   : std_logic_vector (3 downto 0) := "1011" ;
	constant h1	   : std_logic_vector (3 downto 0) := "1100" ;
	constant c2	   : std_logic_vector (3 downto 0) := "1101" ;
	
	-- Inicjalizacja dlugosci trwania dzwiekow (full, half, quarter, eight)
	constant f	   : std_logic_vector (1 downto 0) := "11" ;
	constant h	   : std_logic_vector (1 downto 0) := "10" ;
	constant q	   : std_logic_vector (1 downto 0) := "01" ;
	constant e	   : std_logic_vector (1 downto 0) := "00" ;


	 -- TODO: Jako pierwsza wartosc przechowywac dlugosc utworu, nastepnie nuty
    type rom_type is array (0 to 63) of std_logic_vector (19 downto 0);                 
    signal ROM : rom_type:= (note(c1, q), note(d1,q), note(e1, q), note(f1,q), 
									 note(g1, q), note(a1,q), note(h1, q), note(c2,q), 
									 note(c2, q), note(h1,q), note(a1, q), note(g1,q), 
									 note(f1, q), note(e1,q), note(d1, q), note(c1,q), 
									 note(c1, q), note(d1,q), note(e1, q), note(f1,q), 
									 note(g1, q), note(a1,q), note(h1, q), note(c2,q), 
									 note(c2, q), note(h1,q), note(a1, q), note(g1,q), 
									 note(f1, q), note(e1,q), note(d1, q), note(c1,q),
									 note(c1, q), note(d1,q), note(e1, q), note(f1,q), 
									 note(g1, q), note(a1,q), note(h1, q), note(c2,q), 
									 note(c2, q), note(h1,q), note(a1, q), note(g1,q), 
									 note(f1, q), note(e1,q), note(d1, q), note(c1,q),
									 note(c1, q), note(d1,q), note(e1, q), note(f1,q), 
									 note(g1, q), note(a1,q), note(h1, q), note(c2,q), 
									 note(c2, q), note(h1,q), note(a1, q), note(g1,q), 
									 note(f1, q), note(e1,q), note(d1, q), note(c1,q));                        

    signal rdata : std_logic_vector(19 downto 0);
begin

    rdata <= ROM(conv_integer(ADDR));

    process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            if (EN = '1') then
                DATA <= rdata;
            end if;
        end if;
    end process;

end syn;

				
