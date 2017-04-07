library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ReadKbdKeys is
    Port ( DO : in  STD_LOGIC_VECTOR (7 downto 0);
			  Reset : in STD_LOGIC;
           Clk : in STD_LOGIC;
           DO_Rdy : in  STD_LOGIC;
           F : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end ReadKbdKeys;

architecture Behavioral of ReadKbdKeys is

signal input : STD_LOGIC_VECTOR (7 downto 0) := X"00";
signal output : STD_LOGIC_VECTOR (3 downto 0) := X"0";

begin
    process1 : process (DO, DO_Rdy, Clk, F, Reset)
    begin
	 if(Reset = '1') then
		input <= X"00";
	
	 elsif(rising_edge(Clk)) then
		if(DO_Rdy = '1' and F = '0') then
			input <= DO;
		elsif(F = '1') then
			input <= X"00";
		end if;
	 end if;
		case input is
			when X"1A" => --z
				output <= "0001";
			when X"1B" => --s
				output <= "0010";
			when X"22" => --x
				output <= "0011";
			when X"23" => --d 
				output <= "0100";
			when X"21" => --c
				output <= "0101";
			when X"2A" => --v
				output <= "0110";
			when X"34" => --g
				output <= "0111";
			when X"32" => --b
				output <= "1000";
			when X"33" => --h
				output <= "1001";
			when X"31" => --n
				output <= "1010";
			when X"3B" => --j
				output <= "1011";
			when X"3A" => --m
				output <= "1100";
         when X"41" => --,
				output <= "1101";
			when others => 
				output <= "0000";
		end case;
    end process;
	
	Y <= output;
end Behavioral;