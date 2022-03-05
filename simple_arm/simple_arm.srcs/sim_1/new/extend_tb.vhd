----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2022 06:30:55 PM
-- Design Name: 
-- Module Name: extend_tb - Testbench
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

entity extend_tb is
--  Port ( );
end extend_tb;

architecture Testbench of extend_tb is
    
    component extend is
    Port ( instr : in STD_LOGIC_VECTOR(23 downto 0);
           immsrc : in STD_LOGIC_VECTOR(1 downto 0);
           extimm : out STD_LOGIC_VECTOR(31 downto 0));
    end component extend;
    
    signal instr: std_logic_vector(23 downto 0);
    signal immsrc:  std_logic_vector(1 downto 0);
    signal extimm:  std_logic_vector(31 downto 0);
begin

    uut: extend port map(
        instr => instr,
        immsrc => immsrc,
        extimm => extimm
    );
    stimulus: process
    begin
    instr <= X"abcdef"; --101010111100110111101111
    immsrc <= "00";
    wait for 10 ns;
    immsrc <= "01";
    wait for 10 ns;
    immsrc <= "10";
    wait for 10 ns;
    immsrc <= "11";
    wait for 10 ns;
    end process;
end Testbench;
