----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2021 06:45:37 PM
-- Design Name: 
-- Module Name: ALU_tb - Testbench
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

entity ALU_tb is
--  Port ( );
end ALU_tb;

architecture Testbench of ALU_tb is
component ALU is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           Control : in STD_LOGIC;
           Result : out STD_LOGIC_VECTOR (2 downto 0);
           OVF : out STD_LOGIC);
end component ALU;

signal a_in: std_logic_vector(2 downto 0);
signal b_in: std_logic_vector(2 downto 0);
signal ctr_in: std_logic;
signal res_out: std_logic_vector(2 downto 0);
signal ovf_out: std_logic;

begin

uut: ALU port map(
            a=>a_in, 
            b=>b_in, 
            Control=>ctr_in, 
            Result=>res_out, 
            OVF=>ovf_out);
            
test_tb: process is
begin

    ctr_in <= '0'; wait for 20ns;
    
--    a_in<="111";b_in<="111";wait for 20ns;
    for i in 0 to 7 loop
        a_in <= std_logic_vector(to_unsigned(i, a_in'length));
        for j in 0 to 7 loop
            b_in <=std_logic_vector(to_unsigned(j, b_in'length)); wait for 20ns;
        end loop; 
    end loop;
    
    wait for 20ns;
    
    ctr_in <= '1'; wait for 20ns;
    for i in 0 to 7 loop
        a_in <= std_logic_vector(to_unsigned(i, a_in'length)); wait for 20ns;
    end loop;

end process test_tb;
end Testbench;

--architecture Testbench of ALU_tb is

--constant WIDTH: positive := 3;
--component ALU is
--    Port ( a : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
--           b : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
--           Control : in STD_LOGIC;
--           Result : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
--           OVF : out STD_LOGIC);
--end component ALU;

--signal a_in: std_logic_vector(WIDTH-1  downto 0);
--signal b_in: std_logic_vector(WIDTH-1  downto 0);
--signal ctr_in: std_logic;
--signal res_out: std_logic_vector(WIDTH-1 downto 0);
--signal ovf_out: std_logic;

--begin

--uut: ALU port map(
--            a=>a_in, 
--            b=>b_in, 
--            Control=>ctr_in, 
--            Result=>res_out, 
--            OVF=>ovf_out);
            
--test_tb: process is
--begin

--    ctr_in <= '0'; wait for 20ns;
--    -- 2^n possible combinations
--    -- n number of bits
--    -- 2^n -1 iterations (vivado iterates and equal)
--    -- ex: 4bits - 2^4=16 
--    for i in 0 to (2**WIDTH - 1) loop
--        a_in <= std_logic_vector(to_unsigned(i, a_in'length));
--        for j in 0 to (2**WIDTH - 1) loop
--            b_in <=std_logic_vector(to_unsigned(j, b_in'length)); wait for 20ns;
--        end loop; 
--    end loop;
    
--    wait for 20ns;
    
--    ctr_in <= '1'; wait for 20ns;
--    for i in 0 to (2**WIDTH - 1) loop
--        a_in <= std_logic_vector(to_unsigned(i, a_in'length)); wait for 20ns;
--    end loop;

--end process test_tb;
--end Testbench;




