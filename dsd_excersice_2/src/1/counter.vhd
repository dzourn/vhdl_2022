----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2022 06:23:27 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is
    Port ( clk : in STD_LOGIC;
           
           sigin : in STD_LOGIC_VECTOR (3 downto 0);
           sigout : out STD_LOGIC_VECTOR (2 downto 0));
end counter;

architecture Behavioral of counter is
    signal sigin_un: unsigned(3 downto 0);
    signal sigout_un: unsigned(2 downto 0) := (others => '0');
begin
    process(clk)
    begin
        sigin_un <= unsigned(sigin);
        if rising_edge(clk) then
            if sigin_un = 5 then
                sigout_un <= sigout_un + 1;
            end if;
        end if;  

        if sigout_un > "101" then
                sigout_un <= "001";
        end if;
    end process;
    sigout <= std_logic_vector(sigout_un);
end Behavioral;
