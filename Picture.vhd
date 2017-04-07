----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:49 01/22/2017 
-- Design Name: 
-- Module Name:    Picture - Behavioral 
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

entity Picture is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR(2 downto 0);
           x : in  STD_LOGIC_VECTOR(9 downto 0);
           y : in  STD_LOGIC_VECTOR(9 downto 0));
end Picture;

architecture Behavioral of Picture is

-- stale odpowiadajace za predkosc przesuwania sie obrazka
constant velocity_h : integer := 1;
constant velocity_v : integer := 1;

-- granice ukladu w ktorym porusza sie figura
constant right_border : integer := 799;
constant down_border : integer := 599;
constant left_border : integer := 0;
constant up_border : integer := 0;


-- dlugosci bokow figury
constant side_h : integer := 30;
constant side_v : integer := 30;

-- wartosci przesuniecia 
signal delta_h : integer range -1 to 1 := 1;
signal delta_v : integer range -1 to 1 := 1;

-- pozycje srodka wyswietlanej figury
signal x_pos : integer range 0 to 799;
signal y_pos : integer range 0 to 599;

signal drawEnabled : boolean;

signal x_in : integer range 0 to 800;
signal y_in : integer range 0 to 600;

begin

	x_in <= to_integer(unsigned(x));
	y_in <= to_integer(unsigned(y));

	

-- przesuwanie obszaru rysowania figury
	move : process(Clk, Reset)
	begin
		if Reset = '1' then
			x_pos <= side_h/2 + 1;
			y_pos <= side_v/2 + 1; 
		else
			if Clk'Event and CLk = '1' then
				x_pos <= x_pos + (delta_h * velocity_h);
				y_pos <= y_pos + (delta_v * velocity_v);
			end if;
		end if;
	end process;


-- ustawianie kierunku przemieszczania figury	
	set_direction : process(x_pos, y_pos, delta_h, delta_v, Reset)
	begin
		if Reset = '1' then
			delta_h <= 1;
			delta_v <= 1;
		else
-- zmiana kierunku ruchu poziomego 
			if (x_pos + (side_h/2)) = right_border then
				delta_h <= -1;
			elsif (x_pos - (side_h/2))	= left_border then 
				delta_h <= 1;
			else
				delta_h <= delta_h;
-- pozostaje taka jak byla
			end if;
-- zmiana kierunku ruchu pionowego
			if (y_pos + (side_v/2)) = down_border then
				delta_v <= -1;
			elsif (y_pos - (side_v/2))	= up_border then 
				delta_v <= 1;
			else
				delta_v <= delta_v;
-- pozostaje taka jak byla
			end if;
		end if;
	end process;
	
-- ustawianie flagi rysowania kiedy znajdujemy sie w obszarze figury	
	check_position : process(x_in, y_in, x_pos, y_pos)
	begin
		if x_in > (x_pos - (side_h/2)) and x_in < (x_pos + (side_h/2)) 
		and y_in > (y_pos - (side_v/2)) and y_in < (y_pos + (side_v/2)) then
			drawEnabled <= true;
		else
			drawEnabled <= false;	
		end if;
	end process;

-- dobieranie koloru figury w zaleznosci od kierunku w ktorym zmierza	
	pick_color : process(delta_h, delta_v, drawEnabled)
	begin 
		if drawEnabled = true then
			if delta_h = 1 then
				if delta_v = 1 then
					RGB <= "100";
				else
					RGB <= "010";
				end if;
			else
				if delta_v = 1 then
					RGB <= "001";
				else
					RGB <= "110";
				end if;
			end if;				
		else
			RGB <= "000";
		end if;
	end process;
	
	
	

end Behavioral;

