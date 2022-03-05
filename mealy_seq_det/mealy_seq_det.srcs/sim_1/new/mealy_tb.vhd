----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2022 07:11:10 PM
-- Design Name: 
-- Module Name: mealy_tb - Testbench
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

entity mealy_tb is
--  Port ( );
end mealy_tb;

architecture Testbench of mealy_tb is

    component mealy is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           din : in STD_LOGIC;
           dout : out STD_LOGIC);
    end component mealy;
    
    signal clk: std_logic := '0';
    signal rst: std_logic := '1';
    signal din: std_logic := 'X';
    signal dout: std_logic;
    
    constant clk_period: time := 10ns;
    
begin
uut: mealy port map(
    clk => clk,
    rst => rst,
    din => din,
    dout => dout
    );
    
clk_proc: process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
    end process;

stim_proc: process
begin
    rst <= '1';
        wait for 100ns;
        wait until (clk = '0' and clk'event);
    rst <= '0';
    
    din <= '0';             --curr=s0 next=s1    
    wait for 1*clk_period;  
    din <= '0';             --curr=s1 next=s2 
    wait for 1*clk_period;
    din <= '1';             --curr=s2 next=s0 dout=1
    
    wait for 1*clk_period;
    din <= '0';             --curr=s0 next=s1
    wait for 1*clk_period;
    din <= '1';             --curr=s1 next=s0 dout=1
    wait for 1*clk_period; 
    
    din <= '1';             --curr=s0 next=s0
    wait for 1*clk_period;
    din <= '0';             --curr=s0 next=s1
    wait for 1*clk_period;
    din <= '1';             --curr=s1 next=s0 dout=1
    wait for 1*clk_period;  
    din <= '1';             --curr=s0 next=s0
    wait for 1*clk_period;
    din <= '0';             --curr=s0 next=s1
    wait for 1*clk_period;
    din <= '0';             --curr=s1 next=s2
    wait for 1*clk_period;
    din <= '1';             --curr=s2 next=s0 dout=1
    wait for 1*clk_period;  
    
    end process;
end Testbench;
