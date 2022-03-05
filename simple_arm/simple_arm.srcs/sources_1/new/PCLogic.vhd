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
           RegWrite_in : in STD_LOGIC;
           PCSrc_in : out STD_LOGIC);
end PCLogic;

architecture Behavioral of PCLogic is
    signal op_RD_tmp : std_logic_vector(6 downto 0);
    signal tmp : std_logic;
begin
    op_RD_tmp(6 downto 5) <= op;
    op_Rd_tmp(4 downto 1) <= RD;
    op_Rd_tmp(0) <= RegWrite_in;
    
    process(op_RD_tmp) is
    begin   
        case op_RD_tmp is
            when "0000001" => PCSrc_in <= '0';
            when "0011101" => PCSrc_in <= '0';
            when "0011111" => PCSrc_in <= '1';
            when "00XXXX0" => PCSrc_in <= '0';
            when "0100001" => PCSrc_in <= '0';
            when "0111101" => PCSrc_in <= '0';
            when "0111111" => PCSrc_in <= '1';
            when "01XXXX0" => PCSrc_in <= '0';
            when "10XXXX0" => PCSrc_in <= '1';
            when others => PCSrc_in <= 'X';
        end case;      
    end process;
    
end Behavioral;
