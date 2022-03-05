----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2022 07:09:19 PM
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity alu is
    generic(width : positive := 32);
    Port ( srcA : in STD_LOGIC_VECTOR (width-1 downto 0);
           srcB : in STD_LOGIC_VECTOR (width-1 downto 0);
           ALUControl : in STD_LOGIC_VECTOR (1 downto 0);
           ALUResult : out STD_LOGIC_VECTOR (width-1 downto 0);
           Flags : out STD_LOGIC_VECTOR (3 downto 0));
end alu;

architecture Behavioral of alu is
    signal tmp: std_logic_vector(31 downto 0) := (others => '0'); 
    signal inv_b: std_logic_vector(31 downto 0);
    signal a: std_logic_vector(31 downto 0);
    signal flags_tmp: std_logic_vector(3 downto 0) := (others => '0');
    signal sum: unsigned(32 downto 0);
    signal cout: std_logic;
    signal result_tmp : std_logic_vector(31 downto 0); 
    
    signal dummy1 : std_logic;
    signal dummy2 : std_logic;
    signal dummy3 : std_logic;
begin
--    tmp(0) <= alu_control(0);
--    inv_b <= not srcB when alu_control(0) = '1' else srcB;
--    sum <= unsigned('0'& srcA) + unsigned('0'& inv_b) + unsigned(tmp);
--    cout <= std_logic(sum(32));
    
--    process(alu_control, srcA, srcB)
--    begin
--        case(alu_control(1 downto 0)) is         
--            when "0-" => result_tmp <= std_logic_vector(sum(31 downto 0));
--            when "10" => result_tmp <= srcA and inv_b;
--            when "11" => result_tmp <= srcA or inv_b;
--            when others => result_tmp <= (others => '0');           
--        end case; 
--    end process;

--    process(result_tmp)
--    begin
--        --this works --V
--        dummy1 <= not(alu_control(0) xor srcA(31) xor srcB(31)); 
--        dummy2 <= srcA(31) xor sum(31);
--        dummy3 <= not alu_control(1);
--        flags_tmp(0) <= dummy1 and dummy3 and dummy3;
--        --this does not work :(
--        --flag_tmp(0) <= (not(alu_control(0) xor srcA(31) xor srcB(31))) and (srcA(31) xor sum(31)) and (not alu_control(1)); --V
--        flags_tmp(1) <= cout and (not alu_control(1)); --N
        
--        if result_tmp = X"00000000" then  --Z
--            flags_tmp(2) <= '1';
--        else
--            flags_tmp(2) <= '0';
--        end if;
        
--        flags_tmp(3) <= result_tmp(31);  --N     
--    end process;
    
--    alu_result <= result_tmp;
--    alu_flags <= flags_tmp;
end Behavioral;
