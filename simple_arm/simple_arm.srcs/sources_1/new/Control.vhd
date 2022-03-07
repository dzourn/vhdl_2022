----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2022 08:40:12 PM
-- Design Name: 
-- Module Name: Control - Behavioral
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

entity Control is
    Port ( instr : in STD_LOGIC_VECTOR (31 downto 12);
           flags : in STD_LOGIC_VECTOR (3 downto 0);
           
           RegSrc : out STD_LOGIC_VECTOR (1 downto 0);
           ALUSrc : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           ALUControl : out STD_LOGIC_VECTOR (3 downto 0); --create new component where sets bits according to alucontrol from decoder and funct    
           Immsrc : out STD_LOGIC_VECTOR(1 downto 0);
           MemWrite : out STD_LOGIC;
           FlagsWrite : out STD_LOGIC;
           RegWrite : out STD_LOGIC;
           PCSrc : out STD_LOGIC);
end Control;

architecture Behavioral of Control is

begin


end Behavioral;
