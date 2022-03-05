----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2022 07:25:59 PM
-- Design Name: 
-- Module Name: Double_a - Dataflow
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

entity Double_a is
    generic (WIDTH : positive := 3);
    Port ( a : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           res: out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           ovf: out STD_LOGIC);
end Double_a;

architecture Dataflow of Double_a is
    signal res_tmp: unsigned(WIDTH downto 0);
begin
    res_tmp <= unsigned(a&'0');
    res <= std_logic_vector(res_tmp(WIDTH-1 downto 0));
    ovf <= std_logic(res_tmp(WIDTH));
end Dataflow;
