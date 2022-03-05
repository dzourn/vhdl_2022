----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2022 06:08:28 PM
-- Design Name: 
-- Module Name: PCLogic - Behavioral
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

entity PCLogic is
    Port ( RD : in STD_LOGIC_VECTOR (3 downto 0);
           op : in STD_LOGIC_VECTOR (1 downto 0);
           RegWrite_in : out STD_LOGIC;
           PCSrc_in : out STD_LOGIC);
end PCLogic;

architecture Behavioral of PCLogic is
    signal op_RD_tmp : std_logic_vector(5 downto 0);
    signal control : std_logic_vector(1 downto 0);
begin
    op_RD_tmp(5 downto 4) <= op;
    op_Rd_tmp(3 downto 0) <= RD;
    
    process(op_RD_tmp) is
    begin   
        case op_RD_tmp is
            when "000000" => control <= "10";
            when "001110" => control <= "11";
            when "00XXXX" => control <= "00";
            when "010000" => control <= "10";
            when "011110" => control <= "10";
            when "011111" => control <= "11";
            when "01XXXX" => control <= "00";
            when "10XXXX" => control <= "01";
            when others => control <= "XX";
        end case;       
    end process;
    
    process(control) is
    begin
        RegWrite_in <= control(1);
        PCSrc_in <= control(0);
    end process;
end Behavioral;
