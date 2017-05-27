----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:17:45 05/04/2017 
-- Design Name: 
-- Module Name:    Synthesia - Behavioral 
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

entity Synthesia is
    Port ( Clk_50MHz : in  STD_LOGIC;
			  Reset : in  STD_LOGIC;
           Pause : in STD_LOGIC;
           x : in  STD_LOGIC_VECTOR (9 downto 0);
           y : in  STD_LOGIC_VECTOR (9 downto 0);
           RGB : out  STD_LOGIC_VECTOR (2 downto 0);
           NoteOut : out STD_LOGIC_VECTOR (3 downto 0));
end Synthesia;

architecture Behavioral of Synthesia is

   -- lokalne deklaracje zmiennych x i y
   signal x_in : integer range 0 to 799 := 0;
   signal y_in : integer range 0 to 599 := 0;
   
   signal x_note : integer range 0 to 799 := 400;
   signal y_note : integer range -72 to 599 := -72;
   
   constant width : integer := 61;
   constant height : integer := 72;
   
   constant bar_position : integer := 475;
   constant bar_height : integer := 10;
   
   type keys_position1 is array (0 to 13) of integer range -62 to 732;
   
   -- tablica pozycji poszczegolnych klawiszy					
	constant keys_position : keys_position1 := 
					(  -62,	   -- pauza		0
						0,		-- c1			1
                  61,	-- cis1		2
                  122,	-- d1			3
                  183,	-- dis1		4
                  244,	-- e1			5
                  305,	-- f1			6
                  366,	-- fis1		7
                  427,	-- g1			8
                  488,	-- gis1		9
                  549,	-- a1			10
                  610,	-- b1			11
                  671,	-- h1			12
                  732); -- c2			13
                  
   constant max : integer := 648;
   type note is array (0 to 2) of integer;
   
   --constant notes_count: integer := 15;
	-- Fly me to the moon
   constant notes_count: integer := 41;
   
   signal should_play : STD_LOGIC;
   
   type notes is array (0 to notes_count - 1) of note;
	
	-- Fly me to the moon
	signal keys_to_display: notes :=
					(  (13, -72, 54), (12, -72, 18), (10, -72, 36), 			
						(8, -72, 18), (6, -72, 54), (8, -72, 54), 		
						(10, -72, 36), (13, -72, 36),(12, -72, 54), 			
						(10, -72, 18),(8, -72, 36),(6, -72, 18),
                  (5, -72, 162), (10, -72, 54),(8, -72, 18),
						(6, -72, 36), (5, -72, 18), (3, -72, 54), 				
						(5, -72, 54), (6, -72, 36),(10, -72, 36), 						
						(9, -72, 54),(6, -72, 18),(5, -72, 36),
                  (3, -72, 18), (1, -72, 162),(0, -72, 36),
						
						(2, -72, 36), (3, -72, 18),(10, -72, 18), 			
						(0, -72, 30),(10, -72, 126),(13, -72, 72),
						
                  (12, -72, 36), (8, -72, 216),(1, -72, 54),
						
						(6, -72, 144), (10, -72, 72), (8, -72, 36),
						(6, -72, 54), (5, -72, 162)); 	
   
--   signal keys_to_display : notes :=
--					(  (0, -72, 72), 			
--						(2, -72, 36), 			
--						(3, -72, 144), 			
--						(4, -72, 108), 		
--						(5, -72, 72), 			
--						(6, -72, 108), 			
--						(7, -72, 36), 			
--						(8, -72, 72), 			
--						(10, -72, 108), 			
--						(12, -72, 144),
--                  (4, -72, 144), 		
--						(5, -72, 36),
--                  (4, -72, 72), 		
--						(5, -72, 108),
--                  (1, -72, 108)); 	
                 
   
   
begin

	x_in <= to_integer(unsigned(x));
	y_in <= to_integer(unsigned(y));
  
	

-- rysowanie
	check_position : process(Clk_50MHz)
	begin
		if rising_edge(Clk_50MHz) then
         if (x_in > 0 and x_in < 793) then
            if (y_in >= bar_position and y_in < bar_position + bar_height) then
               RGB <= "111";
               should_play <= '0';
            else
               RGB <= "000";
               should_play <= '0';
            end if;
         else
            RGB <= "000";
            should_play <= '0';
         end if;
       
         for i in 0 to notes_count - 1 loop
            if (x_in > keys_position(keys_to_display(i)(0)) and x_in < keys_position(keys_to_display(i)(0)) + width) then
               if (y_in > keys_to_display(i)(1) and y_in < keys_to_display(i)(1) + keys_to_display(i)(2)) then 
                  if (keys_to_display(i)(1) + keys_to_display(i)(2) >= bar_position ) then
                     RGB <= "100"; 
                     should_play <= '1';
                   else
                     RGB <= "010";
                     should_play <= '0';
                  end if;                                   
               end if;
            end if; 
         end loop; 
         
         if (x_in > 0 and x_in < 793) then
            if (y_in >= bar_position and y_in < bar_position + bar_height) then
               RGB <= "111";
               should_play <= '0';
            end if;
         end if;
         
         if (y_in >= bar_position + bar_height) then
            RGB <= "000";
            should_play <= '0';
         end if;
      end if;
	end process;
   
   move : process(Clk_50MHz)
   begin
      if reset = '1' then
            keys_to_display(0)(1) <= -72;
      elsif rising_edge(Clk_50MHz) and Pause = '0' then
         if (y_in = bar_position and x_in = 0) then  
            keys_to_display(0)(1) <= keys_to_display(0)(1) + 1;                     
            for i in 1 to notes_count - 1 loop                 
               keys_to_display(i)(1) <= keys_to_display(i-1)(1) - keys_to_display(i)(2) + 1;           
            end loop;
         end if;   
      end if;
   end process; 
   
   play : process(Clk_50MHz)
   begin
      if rising_edge(Clk_50MHz) then
         if (y_in = bar_position - 1) then
            if (x_in > keys_position(1) and x_in <= keys_position(2)) then
               if (should_play = '1') then
                  NoteOut <= "0001";
               end if;
            elsif (x_in > keys_position(2) and x_in <= keys_position(3)) then
               if (should_play = '1') then
                  NoteOut <= "0010";
               end if;
            elsif (x_in > keys_position(3) and x_in <= keys_position(4)) then
               if (should_play = '1') then
                  NoteOut <= "0011";
               end if;
            elsif (x_in > keys_position(4) and x_in <= keys_position(5)) then
               if (should_play = '1') then
                  NoteOut <= "0100";
               end if;
            elsif (x_in > keys_position(5) and x_in <= keys_position(6)) then
               if (should_play = '1') then
                  NoteOut <= "0101";
               end if;
            elsif (x_in > keys_position(6) and x_in <= keys_position(7)) then
               if (should_play = '1') then
                  NoteOut <= "0110";
               end if;
            elsif (x_in > keys_position(7) and x_in <= keys_position(8)) then
               if (should_play = '1') then
                  NoteOut <= "0111";
               end if;
            elsif (x_in > keys_position(8) and x_in <= keys_position(9)) then
               if (should_play = '1') then
                  NoteOut <= "1000";
               end if;
            elsif (x_in > keys_position(9) and x_in <= keys_position(10)) then
               if (should_play = '1') then
                  NoteOut <= "1001";
               end if;
            elsif (x_in > keys_position(10) and x_in <= keys_position(11)) then
               if (should_play = '1') then
                  NoteOut <= "1010";
               end if;
            elsif (x_in > keys_position(11) and x_in <= keys_position(12)) then
               if (should_play = '1') then
                  NoteOut <= "1011";
               end if;
            elsif (x_in > keys_position(12) and x_in <= keys_position(13)) then
               if (should_play = '1') then
                  NoteOut <= "1100";
               end if;
            elsif (x_in >= keys_position(13)) then
               if (should_play = '1') then
                  NoteOut <= "1101";
               end if;
            else
               NoteOut <= "0000";
            end if;               
         end if;
      end if;
   end process;

end Behavioral;

