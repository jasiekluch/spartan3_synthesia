library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SawtoothGenerator is
    Port ( Clk_50MHz : in  STD_LOGIC;
				Note : in STD_LOGIC_VECTOR ( 3 downto 0 );
           DATA : out  STD_LOGIC_VECTOR (11 downto 0);
           Reset : in  STD_LOGIC;
           T_sync : out STD_LOGIC);
end SawtoothGenerator;

architecture Behavioral of SawtoothGenerator is

	-- Licznik pojedynczego przebiegu 
	signal counter : integer range 0 to 63 := 0;
	
	-- Licznik dzielacy czestotliwosc wejsciowa
   signal tickCounter : integer := 0;
	
	-- Sygnal startu przesylania
   signal ts : std_logic := '0';
	
	-- Numer elementu tablicy zawierajacej granice licznika 
	-- dla poszczegolnych czestotliwosci dzwieku
	signal index : integer range 0 to 13 := 0;
	
	type notes is array (0 to 13) of integer range 0 to 3000;
	
	-- Stala ustawiona jako granica zmiennej tickCounter
	-- pozwala wygenerowac sygnal o czestotliwosci ok 1kHz
	-- constant test : integer := 780 ;
	
--	-- Tablica czestotliwosci 12 dzwiekow od c4 do c5 
--	-- dla systemu rownomiernie temperowanego, A4 = 440Hz
--	constant pitch : notes := 
--					(	   1,          -- brak dzwieku
--                2985, 			-- c4
--						2817, 			-- cis/des4
--						2659, 			-- d4 
--						2510, 			-- dis/es4 
--						2369, 			-- e4 
--						2236, 			-- f4 
--						2111, 			-- fis/ges4 
--						1992, 			-- g4 
--						1880, 			-- gis/as4 
--						1775, 			-- a4 
--						1675, 			-- ais/b4 
--						1581, 			-- h4 
--						1492); 			-- c5

	
	-- Tablica czestotliwosci 12 dzwiekow od c4 do c5 
	-- dla systemu rownomiernie temperowanego, A4 = 440Hz
	constant pitch : notes := 
					(	   1,          -- brak dzwieku
                  1492, 			-- c5
						1408, 			-- cis/des5
						1329, 			-- d5 
						1254, 			-- dis/es5 
						1184, 			-- e5 
						1118, 			-- f5 
						1054, 			-- fis/ges5 
						 995, 			-- g5 
						 939, 			-- gis/as5 
						 887, 			-- a5 
						 837, 			-- ais/b5 
						 790, 			-- h5 
						 745); 			-- c6
	
	
begin

	index <= to_integer( unsigned(Note));

	-- Proces odpowiedzialny za licznik dzielacy czestotliwosc 
	-- oraz za sygnal startu przesylania
	process(Reset, Clk_50MHz)
	begin
		if (Reset = '1') then
         tickCounter <= 0;
         ts <= '0';
		elsif (rising_edge(Clk_50MHz) and index /= 0) then
         if (tickCounter >= pitch(index)) then
            tickCounter <= 0;
				ts <= '1';
         else
            tickCounter <= tickCounter + 1; 
				ts <='0';
         end if;
		end if;
	end process;
	
	-- Proces odpowiedzialny za licznik pojedynczego przebiegu fali
	process(Clk_50MHz, Reset)
	begin
		if (Reset = '1') then
			counter <= 0;
		elsif rising_edge(Clk_50MHz) and tickCounter = pitch(index) then
			if (counter = 63) then
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
		end if; 
	end process;
				
   T_sync <= ts;
	
	-- Wektor wyjsciowy zwracany jest na najstarszych bitach, 
	-- poniewaz te sa zczytywane przez modulDACWrite
	DATA <= std_logic_vector(to_unsigned(counter,6)) & "000000";

end Behavioral;

