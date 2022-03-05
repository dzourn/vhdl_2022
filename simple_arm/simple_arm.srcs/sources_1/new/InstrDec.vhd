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
           Immsrc : out STD_LOGIC;
           ALUControl : out STD_LOGIC_VECTOR (1 downto 0);
           MemtoReg : out STD_LOGIC;
           NoWrite_in: out STD_LOGIC);
end InstrDec;

architecture Behavioral of InstrDec is

    signal op_funct_tmp : std_logic_vector(7 downto 0);
    signal control: std_logic_vector(7 downto 0);
begin

    op_funct_tmp(7 downto 6) <= op;
    op_funct_tmp(5 downto 0) <= funct;
    --Immsrc <= op_funct_tmp(0);
   
    process (op_funct_tmp) is
    begin
        case op_funct_tmp is
            when "0010100X" => control <= "X0100000"; --ADD IMM
            when "0000100X" => control <= "000X0000"; --ADD REG
            when "0010010X" => control <= "X0100100"; --SUB IMM
            when "0000010X" => control <= "000X0100"; --SUB REG
            when "00110101" => control <= "X01001X1"; --CMP IMM
            when "00010101" => control <= "000X01X1"; --CMP REG
            when "0010000X" => control <= "X0101000"; --AND IMM
            when "0000000X" => control <= "000X1000"; --AND REG
            when "0011100X" => control <= "X0101100"; --ORR IMM
            when "0001100X" => control <= "000X1100"; --ORR REG
            
            when "01011001" => control <= "X0100010"; --LDR IMM +
            when "01010001" => control <= "X0100110"; --LDR IMM -
            when "01011000" => control <= "101000X0"; --STR IMM +
            when "01010000" => control <= "101001X0"; --STR IMM -
            when "1010XXXX" => control <= "X1110000"; --B
            --BL
            --MOV,NOP
            --MVN
            --LSL
            --LSR
            --ASR
            --ROR    
            
            when others => control <= "XXXXXXXX";
        end case;
    end process;
    
    process(control) is
        begin
        RegSrc <= control(7 downto 6);
        ALUsrc <= control(5);
        MemtoReg <= control(4);
        ALUControl <= control(3 downto 2);
        Immsrc <= control(1);
        NoWrite_in <= control(0);
    end process;

end Behavioral;