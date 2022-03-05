----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2022 11:27:28 PM
-- Design Name: 
-- Module Name: reg_file_tb - Testbench
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

entity reg_file_tb is
--  Port ( );
end reg_file_tb;

architecture Testbench of reg_file_tb is
    component reg_file is
    Port ( clk : in STD_LOGIC;
           we3 : in STD_LOGIC;
           ra1 : in STD_LOGIC_VECTOR (3 downto 0);
           ra2 : in STD_LOGIC_VECTOR (3 downto 0);
           wa3 : in STD_LOGIC_VECTOR (3 downto 0);
           wd3 : in STD_LOGIC_VECTOR (31 downto 0);
           r15 : in STD_LOGIC_VECTOR (31 downto 0);
           rd1 : out STD_LOGIC_VECTOR (31 downto 0);
           rd2 : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    signal clk: std_logic := '0';
    constant clk_period : time := 10ns;
    
    signal we3: std_logic;
    signal ra1: STD_LOGIC_VECTOR (3 downto 0);
    signal ra2: STD_LOGIC_VECTOR (3 downto 0);
    signal wa3: STD_LOGIC_VECTOR (3 downto 0);
    signal wd3: STD_LOGIC_VECTOR (31 downto 0);
    signal r15: STD_LOGIC_VECTOR (31 downto 0);
    signal rd1: STD_LOGIC_VECTOR (31 downto 0);
    signal rd2: STD_LOGIC_VECTOR (31 downto 0);
    
begin

    uut: reg_file port map(
    
    clk => clk,
    we3 => we3,
    ra1 => ra1,
    ra2 => ra2,
    wa3 => wa3,
    wd3 => wd3,
    r15 => r15,
    rd1 => rd1,
    rd2 => rd2
    
    );

    clk_process: process
    begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
    end process;
 
    stimulus_process: process
    begin
--        ra1<= (others => 'U');
--        ra2<= (others => 'U');
        wait for 1*clk_period;
        
        we3 <= '1';
        r15 <= x"ffffffff";
        wait for 1*clk_period;
        for i in 0 to 15 loop
            wa3 <= std_logic_vector(to_unsigned(i, wa3'length));-- wait for 1*clk_period;
            wd3 <= std_logic_vector(x"abcdef00" + to_unsigned(i, wa3'length)); wait for 1*clk_period;   
        end loop;
        
        we3 <='0';
        wait for 1*clk_period;
        
        for y in 0 to 15 loop
            ra1<= std_logic_vector(to_unsigned(y, ra1'length));
            ra2<= std_logic_vector(to_unsigned(y, ra2'length)); wait for 1*clk_period;
        end loop;
--        we3 <= '1';
--        wait for 1*clk_period;
--        wd3 <= x"feedface";
--        wa3 <= "0010";              --write on 2
--        we3 <= '0';
--        wait for 1*clk_period;
--        ra1 <= "0010";              --read from 2
--        we3 <= '1';
--        wait for 1*clk_period;
--        wd3<= x"deadbeef";
--        wa3<= "0101";               --write on 5
--        r15<= x"abcdef01";
--        wait for 1*clk_period;
--        we3 <= '0';
--        ra1 <= "1111";              --read from 15
--        ra2 <= "0101";              --read from 5
--        wait for 1*clk_period;
    
    end process;

end Testbench;
