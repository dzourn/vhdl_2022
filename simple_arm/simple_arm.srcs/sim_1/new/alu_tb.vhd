----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2022 08:00:56 PM
-- Design Name: 
-- Module Name: alu_tb - Testbench
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

entity alu_tb is
--  Port ( );
end alu_tb;

architecture Testbench of alu_tb is
    component alu_v2 is 
    generic(width : positive := 32);
    Port ( srcA : in STD_LOGIC_VECTOR (width-1 downto 0);
           srcB : in STD_LOGIC_VECTOR (width-1 downto 0);
           ALUControl : in STD_LOGIC_VECTOR (3 downto 0);
           shamt : in STD_LOGIC_VECTOR(4 downto 0);
           ALUResult : out STD_LOGIC_VECTOR (width-1 downto 0);
           Flags : out STD_LOGIC_VECTOR (3 downto 0));
  end component alu_v2;
    
    signal srcA :STD_LOGIC_VECTOR (31 downto 0);
    signal srcB :STD_LOGIC_VECTOR (31 downto 0);
    signal ALUControl: std_logic_vector(3 downto 0);
    signal ALUResult: std_logic_vector(31 downto 0);
    signal Flags: std_logic_vector(3 downto 0);
    signal shamt : std_logic_vector(4 downto 0);
    constant clk_period : time := 10 ns;
    signal clk: std_logic := '0';
begin
    uut: alu_v2 port map(
        srcA => srcA,
        srcB => srcB,
        ALUControl => ALUControl,
        ALUResult =>  ALUResult,
        Flags => Flags,
        shamt => shamt
    );
    clk_process: process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
    
    stimulus: process
    begin
    --https://onlinetoolz.net/bitshift#base=2&value=10000000000000000000000000001111&bits=32&steps=2&dir=r&type=rtc&carry=0&allsteps=1
    shamt <= "00010"; 
    srcA  <= "00000000000000000000000000010011"; --19 in decimal
    srcB  <= "00000000000000000000000000001100"; --12 in decimal
    ALUControl <= "0000";  wait for Clk_period; -- A+B
    ALUControl <= "0001";  wait for Clk_period; -- A-B
    ALUControl <= "0010";  wait for Clk_period; -- and
    ALUControl <= "0011";  wait for Clk_period; -- or
    ALUControl <= "0100";  wait for Clk_period; --mov
    ALUControl <= "0101";  wait for Clk_period; --mvm
    ALUControl <= "0110";  wait for Clk_period; --xor
    ALUControl <= "1100";  wait for Clk_period; --lsl
    ALUControl <= "1101";  wait for Clk_period; --lsr
    ALUControl <= "1110";  wait for Clk_period; --asr
    ALUControl <= "1111";  wait for Clk_period; --ror
    
    end process;
end Testbench;
