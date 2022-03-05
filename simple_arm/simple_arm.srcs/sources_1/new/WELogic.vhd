----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2022 05:37:42 PM
-- Design Name: 
-- Module Name: WELogic - Behavioral
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

entity WELogic is
    Port ( op : in STD_LOGIC_VECTOR (1 downto 0);
           SL : in STD_LOGIC;
           NoWrite_in : in STD_LOGIC;
           
           RegWrite_in : out STD_LOGIC;
           MemWrite_in : out STD_LOGIC;
           FlagsWrite_in : out STD_LOGIC);
end WELogic;

architecture Behavioral of WELogic is
    signal op_S_L_tmp: std_logic_vector(3 downto 0);
    signal control:  std_logic_vector(2 downto 0);
begin
    
    op_S_L_tmp(3 downto 2) <= op;
    op_S_L_tmp(1) <= SL;
    op_S_L_tmp(0) <= NoWrite_in; 

    process(op_S_L_tmp) is
    begin
        case op_S_L_tmp is
        when "0000" => control <= "100"; --DP1
        when "0010" => control <= "101"; --DP2
        when "0011" => control <= "001"; --cmp
        when "0110" => control <= "100"; --str
        when "10-0" => control <= "000"; --B 
        
        when others => control <= "XXX";
        end case;
     
    end process;
    
    process(control) is
    begin
        RegWrite_in <= control(2);
        MemWrite_in <= control(1);
        FlagsWrite_in <= control(0);
    end process;
end Behavioral;
