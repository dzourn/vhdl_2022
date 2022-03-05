----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2022 11:46:00 PM
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is
component counter is
    Port ( clk : in STD_LOGIC;
           
           sigin : in STD_LOGIC_VECTOR (3 downto 0);
           sigout : out STD_LOGIC_VECTOR (2 downto 0));
end component counter;

signal clk_tb: std_logic;
signal sigin_tb: std_logic_vector(3 downto 0);
signal sigout_tb: std_logic_vector(2 downto 0);
begin

uut: counter port map(clk=>clk_tb,
                      sigin=>sigin_tb,
                      sigout=>sigout_tb);
                      
clk_proc: process is
begin
    clk_tb <= '0';
    wait for 10ns;
    clk_tb <= '1';
    wait for 10ns;
end process clk_proc;

data_proc: process is
begin
    for y in 0 to 10 loop
        for i in 0 to 15 loop
            sigin_tb <= std_logic_vector(to_unsigned(i, sigin_tb'length)); wait for 20ns;
        end loop;
    end loop;
end process;
end Behavioral;

