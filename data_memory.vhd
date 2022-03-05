----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 03:39:17 PM
-- Design Name: 
-- Module Name: data_memory - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_memory is
	generic ( N: positive := 5;
			  M: positive := 32
	);
    Port ( clk : in STD_LOGIC;
           WE : in STD_LOGIC; --MemWrite
           A : in STD_LOGIC_VECTOR (M-1 downto 0);
           WD : in STD_LOGIC_VECTOR (M-1 downto 0);
           RD : out STD_LOGIC_VECTOR (M-1 downto 0));
end data_memory;

architecture Behavioral of data_memory is
	type memory is array(2**(N-1) downto 0) of std_logic_vector(M-1 downto 0);
	signal data_memory: memory;
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if WE = '1' then
				data_memory(to_integer(unsigned(A(7 downto 2)))) <= WD;
			end if;
		end if;
		RD <= data_memory(to_integer(unsigned(A(7 downto 2))));
	end process;

end Behavioral;
