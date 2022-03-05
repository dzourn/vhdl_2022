----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2020 10:47:40 AM
-- Design Name: 
-- Module Name: Lab2 - DF
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

entity DSD_Lab2 is
    Port ( data1_in : in STD_LOGIC_VECTOR (1 downto 0);
           data2_in : in STD_LOGIC_VECTOR (1 downto 0);
           data1_out : out STD_LOGIC;
           data2_out : out STD_LOGIC_VECTOR (1 downto 0)
         );
end DSD_Lab2;

architecture DF of DSD_Lab2 is

begin

data1_out<=   not( data1_in(1) xor data2_in(1) xor (data1_in(0)xor data2_in(0)));       --xnor
          
data2_out<= data1_in xor data2_in;

end DF;
