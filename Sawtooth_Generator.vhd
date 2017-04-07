library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sawtooth_Generator is
    Port ( Clk_in : in  STD_LOGIC;
				Note_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
           Wave_out : out  STD_LOGIC_VECTOR (11 downto 0);
           Reset : in  STD_LOGIC;
           Ts_out : out STD_LOGIC);
end Sawtooth_Generator;

architecture Behavioral of Sawtooth_Generator is

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
	
--	-- Tablica czestotliwosci 12 dzwiekow od c3 do c4 
--	-- dla systemu rownomiernie temperowanego, A4 = 440Hz
--	constant pitch : notes := 
--					(	5971, 			-- c3
--						5636, 			-- cis/des3
--						5320, 			-- d3 
--						5021, 			-- dis/es3 
--						4739, 			-- e3 
--						4473, 			-- f3 
--						4222, 			-- fis/ges3 
--						3985, 			-- g3 
--						3761, 			-- gis/as3 
--						3550, 			-- a3 
--						3351, 			-- ais/b3 
--						3163, 			-- h3 
--						2985); 			-- c4

	
	-- Tablica czestotliwosci 12 dzwiekow od c4 do c5 
	-- dla systemu rownomiernie temperowanego, A4 = 440Hz
	constant pitch : notes := 
					(	   1,          -- brak dzwieku
                  2985, 			-- c4
						2817, 			-- cis/des4
						2659, 			-- d4 
						2510, 			-- dis/es4 
						2369, 			-- e4 
						2236, 			-- f4 
						2111, 			-- fis/ges4 
						1992, 			-- g4 
						1880, 			-- gis/as4 
						1775, 			-- a4 
						1675, 			-- ais/b4 
						1581, 			-- h4 
						1492); 			-- c5
	


begin

	index <= to_integer( unsigned(Note_in));

	-- Proces odpowiedzialny za licznik dzielacy czestotliwosc 
	-- oraz za sygnal startu przesylania
	process(Reset, Clk_in)
	begin
		if (Reset = '1') then
         tickCounter <= 0;
         ts <= '0';
		elsif (rising_edge(Clk_in) and index /= 0) then
         if (tickCounter = pitch(index)) then
            tickCounter <= 0;
				ts <= '1';
         else
            tickCounter <= tickCounter + 1; 
				ts <='0';
         end if;
		end if;
	end process;
	
	-- Proces odpowiedzialny za licznik pojedynczego przebiegu fali
	process(Clk_in, Reset)
	begin
		if (Reset = '1') then
			counter <= 0;
		elsif rising_edge(Clk_in) and tickCounter = pitch(index) then
			if (counter = 63) then
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
		end if; 
	end process;
				
   Ts_out <= ts;
	
	-- Wektor wyjsciowy zwracany jest na najstarszych bitach, 
	-- poniewaz te sa zczytywane przez modulDACWrite
	Wave_out <= std_logic_vector(to_unsigned(counter,6)) & "000000";

end Behavioral;

