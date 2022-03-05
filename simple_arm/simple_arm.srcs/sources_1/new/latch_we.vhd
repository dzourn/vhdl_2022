----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2022 05:49:11 PM
-- Design Name: 
-- Module Name: latch_we - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity latch_we is
    generic (width: positive := 32);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           we : in STD_LOGIC;
           d : in STD_LOGIC_VECTOR(width-1 downto 0);
           q : out STD_LOGIC_VECTOR(width-1 downto 0));
end latch_we;

architecture Behavioral of latch_we is

begin
    process(clk,reset)
    begin
        if reset = '1' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            if we = '1' then
                q<=d;
            end if;
        end if;
    
    end process;


end Behavioral;
