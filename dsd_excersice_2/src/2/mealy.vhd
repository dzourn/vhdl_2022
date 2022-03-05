----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2022 06:32:08 PM
-- Design Name: 
-- Module Name: mealy - Behavioral
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

entity mealy is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           din : in STD_LOGIC;
           dout : out STD_LOGIC);
end mealy;

architecture Behavioral of mealy is
    type state is (s0, s1, s2);
    signal curr_state, next_state: state;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst='1' then
                curr_state <= s0;
            else
                curr_state <= next_state;
            end if;
        end if;
    end process;

    process(curr_state, din)
    begin
        dout <= '0';
        case(curr_state) is
            when s0 =>
                    if din = '1' then
                        next_state <= s0;
                        dout <= '0';
                    else
                        next_state <= s1;
                        dout <= '0';
                    end if;
                    
            when s1 =>
                    if din = '1' then
                        next_state <= s0;
                        dout <= '1';
                    else
                        next_state <= s2;
                        dout <= '0';
                    end if;
                    
             when s2 =>
                    if din = '1' then
                        next_state <= s0;
                        dout <= '1';
                    else
                        next_state <= s1;
                        dout <= '0';
                    end if;
         end case;     
    end process;
end Behavioral;

