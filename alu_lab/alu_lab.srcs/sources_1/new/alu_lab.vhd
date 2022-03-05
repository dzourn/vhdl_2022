----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2021 04:08:57 PM
-- Design Name: 
-- Module Name: alu_lab - Behavioral
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

entity alu_lab is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           ctr : in STD_LOGIC;
           result: out STD_LOGIC_VECTOR (2 downto 0);
           cout: out STD_LOGIC);
end alu_lab;

architecture Dataflow of alu_lab is

signal res_tmp: unsigned(3 downto 0);
begin

res_tmp <= unsigned('0'&a)+unsigned('0'&b) when ctr='0' else unsigned(a&'0') ;
cout <= res_tmp(3);
result <= STD_LOGIC_VECTOR(res_tmp(2 downto 0));
end Dataflow;
