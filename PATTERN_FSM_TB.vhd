----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/12/2020 09:38:44 PM
-- Design Name: 
-- Module Name: PATTERN_FSM_TB - Behavioral
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

use STD.ENV.ALL;

entity PATTERN_FSM_TB is
--  Port ( ); is not required
end PATTERN_FSM_TB;

architecture Behavioral of PATTERN_FSM_TB is

-- Unit Under Test (UUT)
component PATTERN_FSM
    port (
        CLK:    in STD_LOGIC;
        RESET:  in STD_LOGIC;
        X:      in STD_LOGIC;
        Y:     out STD_LOGIC);
end component;

-- Internal Inputs to UUT
signal CLK   : STD_LOGIC := '0';
signal RESET : STD_LOGIC := '1';
signal X     : STD_LOGIC := 'X';

-- Internal Outputs from UUT
signal Y     : STD_LOGIC;

-- Clock period definitions
constant CLK_period : time := 10 ns;

begin
-- Instantiate the Unit Under Test (UUT)
uut: PATTERN_FSM
	port map (
		CLK   => CLK,  
		RESET => RESET,
		X     => X,   
		Y     => Y
        );

-- Clock process definition
CLK_process : process
    begin
		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;
    end process;
   
-- Stimulus process definition
Stimulus_process: process
	begin
-- 	Syncrhonous RESET is deasserted on CLK falling edge 
-- after GSR signal disable (it remains enabled for 100 ns)
		RESET <= '1';
        wait for 100 ns;
        wait until (CLK = '0' and CLK'event);
		RESET <= '0';
		    
-- UUT inputs are asserted and deasserted on CLK falling edge
-- All paths of transition state diagram has to be activated
-- After Reset deassert, Current State = S0
      X <= '0';                 -- Current State = S0  Next State = S1
      wait for 1*CLK_period;
      X <= '1';                 -- Current State = S1  Next State = S2
      wait for 1*CLK_period;
      X <= '0';                 -- Current State = S2  Next State = S1
      wait for 1*CLK_period;
      X <= '1';                 -- Current State = S1  Next State = S2
      wait for 1*CLK_period;
      X <= '1';                 -- Current State = S2  Next State = S0
      wait for 1*CLK_period;
      X <= '1';                 -- Current State = S0  Next State = S0
      wait for 1*CLK_period;
      X <= '0';                 -- Current State = S0  Next State = S1
      wait for 1*CLK_period;
      X <= '0';                 -- Current State = S1  Next State = S1
      wait for 1*CLK_period;
            
-- Message and simulation end
	report "TESTS COMPLETED";
	stop(2);	
	end process;

end Behavioral;
