----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 04:27:28 PM
-- Design Name: 
-- Module Name: InstrDec - Behavioral
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

entity InstrDec is
    Port ( op : in STD_LOGIC_VECTOR (1 downto 0);
           funct : in STD_LOGIC_VECTOR (5 downto 0);
           RegSrc : out STD_LOGIC_VECTOR (1 downto 0);
           ALUsrc : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           ALUControl : out STD_LOGIC_VECTOR (1 downto 0);
           Immsrc : out STD_LOGIC;
           NoWrite_in: out STD_LOGIC);
end InstrDec;

architecture Behavioral of InstrDec is

    signal op_funct_tmp : std_logic_vector(7 downto 0);
   
begin

    op_funct_tmp(7 downto 6) <= op;
    op_funct_tmp(5 downto 0) <= funct;
    
    process(op_funct_tmp)
    begin
        case op_funct_tmp is
            
            when "0010100-" =>     --add imm
                  RegSrc <= "X0";
                  ALUsrc <= '1';
                  Immsrc <= '0';
                  ALUControl <= "00";
                  MemtoReg <= '0';
                  NoWrite_in <= '0';
                  
             when "0000100-" =>    --add reg
                  RegSrc <= "00";
                  ALUsrc <= '0';
                  Immsrc <= 'X';
                  ALUControl <= "00";
                  MemtoReg <= '0';
                  NoWrite_in <= '0';
                  
             when "0010010-" =>    --sub imm
                  RegSrc <= "X0";
                  ALUsrc <= '1';
                  Immsrc <= '0';
                  ALUControl <= "01";
                  MemtoReg <= '0';
                  NoWrite_in <= '0';
              
             when "0000010-" =>    --sub reg
                  RegSrc <= "00";
                  ALUsrc <= '0';
                  Immsrc <= 'X';
                  ALUControl <= "01";
                  MemtoReg <= '0';
                  NoWrite_in <= '0';
                  

             when others => 
                  RegSrc <= "00";
                  ALUsrc <= '0';
                  Immsrc <= '0';
                  ALUControl <= "00";
                  MemtoReg <= '0';
                  NoWrite_in <= '0';
       end case;
            
--            when "01"
            
--            when "10"
            
--            when "11"
    
    
    
    
    end process;

end Behavioral;
