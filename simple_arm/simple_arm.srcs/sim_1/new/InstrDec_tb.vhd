----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2022 08:25:02 PM
-- Design Name: 
-- Module Name: InstrDec_tb - Testbench
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

entity InstrDec_tb is
--  Port ( );
end InstrDec_tb;

architecture Testbench of InstrDec_tb is
    component InstrDec is
    Port ( op : in STD_LOGIC_VECTOR (1 downto 0);
           funct : in STD_LOGIC_VECTOR (5 downto 0);
           RegSrc : out STD_LOGIC_VECTOR (1 downto 0);
           ALUsrc : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           ALUControl : out STD_LOGIC_VECTOR (1 downto 0); --more bits
           Immsrc : out STD_LOGIC;
           NoWrite_in: out STD_LOGIC);
    end component InstrDec;
    
    
    signal op : STD_LOGIC_VECTOR (1 downto 0);
    signal funct : STD_LOGIC_VECTOR (5 downto 0);
    signal RegSrc : STD_LOGIC_VECTOR (1 downto 0);
    signal ALUsrc : STD_LOGIC; 
    signal MemtoReg : STD_LOGIC; 
    signal ALUControl: STD_LOGIC_VECTOR (1 downto 0);
    signal Immsrc : STD_LOGIC; 
    signal NoWrite_in : STD_LOGIC; 
begin  

uut: InstrDec port map(
    op => op,
    funct => funct,
    RegSrc => RegSrc,
    ALUsrc => ALUsrc,
    MemtoReg => MemtoReg,
    ALUControl => ALUControl,
    Immsrc => Immsrc,
    Nowrite_in => Nowrite_in);

stimulus: process is
begin
    op <= "00";
    funct <= "101000";
    wait for 10ns;
    op <= "10";
    funct <= "10XXXX";
    wait for 10ns;
end process;
end Testbench;
