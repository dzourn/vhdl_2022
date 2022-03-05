----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2022 10:45:13 PM
-- Design Name: 
-- Module Name: reg_file - Behavioral
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

entity reg_file is
    Port ( clk : in STD_LOGIC;
           we3 : in STD_LOGIC;
           ra1 : in STD_LOGIC_VECTOR (3 downto 0);
           ra2 : in STD_LOGIC_VECTOR (3 downto 0);
           wa3 : in STD_LOGIC_VECTOR (3 downto 0);
           wd3 : in STD_LOGIC_VECTOR (31 downto 0);
           r15 : in STD_LOGIC_VECTOR (31 downto 0);
           rd1 : out STD_LOGIC_VECTOR (31 downto 0);
           rd2 : out STD_LOGIC_VECTOR (31 downto 0));
end reg_file;

architecture Behavioral of reg_file is
    type t_rfile is array (0 to 15) of std_logic_vector(31 downto 0);
    signal rfile: t_rfile;
begin
    
    process(clk) is
    begin
        if rising_edge(clk) then
            if we3 = '1' then
                rfile(to_integer(unsigned(wa3))) <= wd3;       
            end if;
            
            if(to_integer(unsigned(ra1)) = 15) then
                rd1 <= r15;
            else
                rd1 <= rfile(to_integer(unsigned(ra1)));
            end if;
        
            if(to_integer(unsigned(ra2)) = 15) then
                rd2 <= r15;
            else
                rd2 <= rfile(to_integer(unsigned(ra2)));
            end if;
        end if;
    end process;
end Behavioral;
