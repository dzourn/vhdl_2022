----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2020 10:56:22 AM
-- Design Name: 
-- Module Name: Lab2_tb - DF_tb
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DSD_Lab2_tb is
--  Port ( );
end DSD_Lab2_tb;

architecture DF_tb of Lab2_tb is

component DSD_Lab2 is
    Port ( data1_in : in STD_LOGIC_VECTOR (1 downto 0);
           data2_in : in STD_LOGIC_VECTOR (1 downto 0);
           data1_out : out STD_LOGIC;
           data2_out : out STD_LOGIC_VECTOR (1 downto 0)
         );
end component DSD_Lab2;

signal data1_in_tb : STD_LOGIC_VECTOR (1 downto 0);
signal data2_in_tb : STD_LOGIC_VECTOR (1 downto 0);
signal data1_out_tb : STD_LOGIC;
signal data2_out_tb : STD_LOGIC_VECTOR (1 downto 0);
           
begin


uut:  DSD_Lab2 port map (data1_in=>data1_in_tb,data2_in=>data2_in_tb,data1_out=>data1_out_tb,data2_out=>data2_out_tb);
--uut:  DSD_Lab2 port map (data2_in=>data2_in_tb,data2_out=>data2_out_tb,data1_in=>data1_in_tb,data1_out=>data1_out_tb);
--uut:  DSD_Lab2 port map (data1_in_tb,data2_in_tb,data1_out_tb,data2_out_tb);
-- First Attempt
test_DF: process is
begin

data1_in_tb<="00";data2_in_tb<="00";wait for 20 ns;
data1_in_tb<="00";data2_in_tb<="01";wait for 20 ns;
data1_in_tb<="00";data2_in_tb<="10";wait for 20 ns;
data1_in_tb<="00";data2_in_tb<="11";wait for 20 ns;
data1_in_tb<="01";data2_in_tb<="00";wait for 20 ns;
data1_in_tb<="01";data2_in_tb<="01";wait for 20 ns;
data1_in_tb<="01";data2_in_tb<="10";wait for 20 ns;
data1_in_tb<="01";data2_in_tb<="11";wait for 20 ns;
data1_in_tb<="10";data2_in_tb<="00";wait for 20 ns;
data1_in_tb<="10";data2_in_tb<="01";wait for 20 ns;
data1_in_tb<="10";data2_in_tb<="10";wait for 20 ns;
data1_in_tb<="10";data2_in_tb<="11";wait for 20 ns;
data1_in_tb<="11";data2_in_tb<="00";wait for 20 ns;
data1_in_tb<="11";data2_in_tb<="01";wait for 20 ns;
data1_in_tb<="11";data2_in_tb<="10";wait for 20 ns;
data1_in_tb<="11";data2_in_tb<="11";wait for 20 ns;

end process test_DF;
end DF_tb;

-- First Attempt

--test_DF: process is
--begin

--for i in 0 to 3 loop
--    data1_in_tb<=std_logic_vector(to_unsigned(i, data1_in_tb'length));
--        for j in 0 to 3 loop
--            data2_in_tb<=std_logic_vector(to_unsigned(j, data2_in_tb'length));wait for 20 ns;
--        end loop;
--end loop;

--end process test_DF;

--end DF_tb;