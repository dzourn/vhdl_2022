----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2022 06:18:02 PM
-- Design Name: 
-- Module Name: extend - Behavioral
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

entity extend is
    Port ( instr : in STD_LOGIC_VECTOR(23 downto 0);
           immsrc : in STD_LOGIC_VECTOR(1 downto 0);
           extimm : out STD_LOGIC_VECTOR(31 downto 0));
end extend;

architecture Behavioral of extend is

begin

    process(instr, immsrc)
    begin
        case immsrc is
            when "00" => extimm <= X"000000" & instr(7 downto 0);
            when "01" => extimm <= X"00000" & instr(11 downto 0);
            when "10" => extimm <= instr(23) & instr(23) & instr(23) &
                                    instr(23) & instr(23) & instr(23) &
                                     instr(23 downto 0) & "00";

            when others => extimm <= X"00000000";
        end case;
    end process;
end Behavioral;
