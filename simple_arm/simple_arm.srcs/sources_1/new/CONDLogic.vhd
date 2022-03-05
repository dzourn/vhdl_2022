----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2022 08:20:33 PM
-- Design Name: 
-- Module Name: CONDLogic - Behavioral
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

entity CONDLogic is
    Port ( cond : in STD_LOGIC_VECTOR (3 downto 0);
           flags : in STD_LOGIC_VECTOR (3 downto 0);
           CondEx_in : out STD_LOGIC);
end CONDLogic;

architecture Behavioral of CONDLogic is
    signal N,Z,C,V : std_logic := '0';
    
begin
    N <= flags(3);
    Z <= flags(2);
    C <= flags(1);
    V <= flags(0);
    
    process(cond) is
    begin 
        case cond is
            when "0000" => CondEx_in <= Z;
            when "0001" => CondEx_in <= not Z;
            when "0010" => CondEx_in <= C;
            when "0011" => CondEx_in <= not C;
            when "0100" => CondEx_in <= N;
            when "0101" => CondEx_in <= not N;
            when "0110" => CondEx_in <= V;
            when "0111" => CondEx_in <= not V;
            when "1000" => CondEx_in <= (not Z) and C;
            when "1001" => CondEx_in <= Z or (not C);
            when "1010" => CondEx_in <= not (N xor V);
            when "1011" => CondEx_in <= N xor V;
            when "1100" => CondEx_in <= (not Z) and not(N xor V);
            when "1101" => CondEx_in <= Z or (N xor V);
            when "1110" => CondEx_in <= '1';
            when "1111" => CondEx_in <= '1';
            when others => CondEx_in <= 'X';
            
        end case;
    
    end process;

end Behavioral;
