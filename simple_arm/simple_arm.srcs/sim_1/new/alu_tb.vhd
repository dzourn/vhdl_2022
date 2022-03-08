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
    component alu is 
    generic(width : positive := 32);
    Port ( srcA : in STD_LOGIC_VECTOR (width-1 downto 0);
           srcB : in STD_LOGIC_VECTOR (width-1 downto 0);
           ALUControl : in STD_LOGIC_VECTOR (3 downto 0);
           shamt : in STD_LOGIC_VECTOR(4 downto 0);
           ALUResult : out STD_LOGIC_VECTOR (width-1 downto 0);
           Flags : out STD_LOGIC_VECTOR (3 downto 0));
  end component alu;
    
    signal srcA :STD_LOGIC_VECTOR (31 downto 0);
    signal srcB :STD_LOGIC_VECTOR (31 downto 0);
    signal ALUControl: std_logic_vector(1 downto 0);
    signal ALUResult: std_logic_vector(31 downto 0);
    signal Flags: std_logic_vector(3 downto 0);
    signal shamt : std_logic_vector(4 downto 0);
    constant clk_period : time := 10 ns;
    signal clk: std_logic := '0';
begin
    uut: alu port map(
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
    
    shamt <= "00010";
    srcA  <= "00000000000000000000000000010011"; --19 in decimal
    srcB  <= "00000000000000000000000000001100"; --12 in decimal
    ALUControl <= "0000";  wait for Clk_period; --Bitwise and A and B
    ALUControl <= "0001";  wait for Clk_period; --Bitwise or B from A.
    ALUControl <= "0100";  wait for Clk_period; --addition A nad B 
    ALUControl <= "0101";  wait for Clk_period;
    --wait for 20ns;
    --alu_control <= "00";
--    wait for 20ns;
--    srcA<=X"0000000a"; --decimal 10
--    srcB<=X"00000005"; --decimal 5
--    wait for 20 ns;
--    alu_control <= "01";
--    wait for 20 ns;
--    alu_control <= "00";
--    wait for 20ns;
--    srcA<=X"ffffffff";
--    srcB<=X"fffffffe";
--    wait for 20 ns;
--    alu_control <= "11";
----    wait for 20ns;
----    srcA<=X"ffffffff";
----    srcB<=X"ffffffff";
----    wait for 20ns;
----    alu_control <= "10";
--    wait for 20ns;
    
    end process;
end Testbench;
