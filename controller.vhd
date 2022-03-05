----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 04:22:31 PM
-- Design Name: 
-- Module Name: controller - Behavioral
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

entity controller is
    Port ( Instr : in STD_LOGIC_VECTOR (31 downto 12);
           flags : in STD_LOGIC_VECTOR (3 downto 0);
           
           RegSrc : out STD_LOGIC_VECTOR(1 downto 0);
           ALUsrc : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           ALUControl : out STD_LOGIC_VECTOR (1 downto 0);
           Immsrc : out STD_LOGIC;
           MemWrite : out STD_LOGIC;
           FlagsWrite : out STD_LOGIC;
           RegWrite : out STD_LOGIC;
           PCsrc : out STD_LOGIC);
end controller;

architecture Behavioral of controller is

begin


end Behavioral;
