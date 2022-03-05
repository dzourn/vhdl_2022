----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2022 05:33:26 PM
-- Design Name: 
-- Module Name: top_module_tb - Testbench
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

entity top_module_tb is
--  Port ( );
end top_module_tb;

architecture Testbench of top_module_tb is
    
    component top_module is
--    generic(
--        WIDTH: positive := 4
--    );
    Port ( clk,rst : in STD_LOGIC;
           data0 : in STD_LOGIC_VECTOR (3 downto 0);
           data1 : in STD_LOGIC_VECTOR (3 downto 0);
           data2 : in STD_LOGIC_VECTOR (3 downto 0);
           data3 : in STD_LOGIC_VECTOR (3 downto 0);
           min : out STD_LOGIC_VECTOR (3 downto 0);
           ones : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
--    constant WIDTH_tb : positive := 4;
    signal  clk :  STD_LOGIC;
    signal  rst :  STD_LOGIC;
--    signal  data0 :  STD_LOGIC_VECTOR (WIDTH_tb-1 downto 0);
--    signal  data1 :  STD_LOGIC_VECTOR (WIDTH_tb-1 downto 0);
--    signal  data2 :  STD_LOGIC_VECTOR (WIDTH_tb-1 downto 0);
--    signal  data3 :  STD_LOGIC_VECTOR (WIDTH_tb-1 downto 0);
--    signal  min : STD_LOGIC_VECTOR (WIDTH_tb-1 downto 0);
--    signal ones :  STD_LOGIC_VECTOR (WIDTH_tb-1 downto 0);

    signal  data0 :  STD_LOGIC_VECTOR (3 downto 0);
    signal  data1 :  STD_LOGIC_VECTOR (3 downto 0);
    signal  data2 :  STD_LOGIC_VECTOR (3 downto 0);
    signal  data3 :  STD_LOGIC_VECTOR (3 downto 0);
    signal  min : STD_LOGIC_VECTOR (3 downto 0);
    signal ones :  STD_LOGIC_VECTOR (3 downto 0);  
    
    constant clk_period : time := 10ns;
begin

    uut: top_module 
    port map(
        clk => clk,
        rst => rst,
        data0 => data0,
        data1 => data1,
        data2 => data2,
        data3 => data3,
        min => min,
        ones => ones
    );

CLK_process: process
    begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
    end process;
    
stimulus_process: process
begin
    rst <= '1';
    wait for 2*clk_period;
    rst <= '0';
   
    data0 <= "1000";
    data1 <= "0100";
    data2 <= "0010";
    data3 <= "0001";     -- min 1- ones = 1
    wait for 2*clk_period;
    
    data0 <= "1001";     --min 9- ones = 2
    data1 <= "1100";      
    data2 <= "1010";      
    data3 <= "1011";      
    wait for 2*clk_period;
    
    
    data0 <= "1111";     --min
    data1 <= "1111";     --min 15- ones = 4 
    data2 <= "1111";     --min 
    data3 <= "1111";     --min 
    wait for 2*clk_period;
    
    data0 <= "0010";     
    data1 <= "0000";     --min - ones = 0 
    data2 <= "0100";      
    data3 <= "1000";      
    wait for 2*clk_period;
    
--    rst <= '1';
--    wait for 4*clk_period;
    
end process;
end Testbench;
