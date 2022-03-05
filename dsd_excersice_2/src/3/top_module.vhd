----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2022 05:54:17 PM
-- Design Name: 
-- Module Name: top_module - Behavioral
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

entity top_module is
    generic(
        WIDTH: positive := 4
    );
    Port ( clk,rst : in STD_LOGIC;
           data0 : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           data1 : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           data2 : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           data3 : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           min : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           ones : out STD_LOGIC_VECTOR (WIDTH-1 downto 0));
end top_module;

architecture Behavioral of top_module is
    component latch is
    generic(
        WIDTH : positive := 4
    );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           Q : out STD_LOGIC_VECTOR (WIDTH-1 downto 0));
    end component latch;
    
    --signals needed for 1 and 2
    signal dbus00: std_logic_vector(WIDTH-1 downto 0);
    signal dbus10: std_logic_vector(WIDTH-1 downto 0);
    signal dbus20: std_logic_vector(WIDTH-1 downto 0);
    signal dbus30: std_logic_vector(WIDTH-1 downto 0);
    
    signal tmp0: std_logic_vector(WIDTH-1 downto 0) := (others => 'U');
    --end of signals for 1 and 2
    
    --signals needed only for 2 - if you wish comment
    signal dbus01: std_logic_vector(WIDTH-1 downto 0);
    signal dbus11: std_logic_vector(WIDTH-1 downto 0);
    signal dbus21: std_logic_vector(WIDTH-1 downto 0);
    signal dbus31: std_logic_vector(WIDTH-1 downto 0);
    
    signal dbus02: std_logic_vector(WIDTH-1 downto 0);
    signal dbus12: std_logic_vector(WIDTH-1 downto 0);
    signal dbus22: std_logic_vector(WIDTH-1 downto 0);
    signal dbus32: std_logic_vector(WIDTH-1 downto 0);
    
    
    signal dbus03: std_logic_vector(WIDTH-1 downto 0);
    signal dbus13: std_logic_vector(WIDTH-1 downto 0);
    signal dbus23: std_logic_vector(WIDTH-1 downto 0);
    signal dbus33: std_logic_vector(WIDTH-1 downto 0);
    
    
    signal tmp1: std_logic_vector(WIDTH-1 downto 0);
    signal tmp2: std_logic_vector(WIDTH-1 downto 0);
    signal tmp3: std_logic_vector(WIDTH-1 downto 0);
    --end of signals for 2
    
    function count_ones(s : std_logic_vector) return integer is
           variable temp : integer := 0;
           begin
           for i in s'range loop
            if s(i) = '1' then temp := temp + 1; 
            end if;
           end loop;
  
           return temp;
    end function count_ones;
    
begin
 
    --using our homemade registers
    L0: latch
        port map(
            clk => clk,
            rst => rst,
            D => data0,
            Q => dbus00
        );
            
    L1: latch
        port map(
            clk => clk,
            rst => rst,
            D => data1,
            Q => dbus10
        );
    
    L2: latch
        port map(
            clk => clk,
            rst => rst,
            D => data2,
            Q => dbus20
        );
        
    L3: latch
        port map(
            clk => clk,
            rst => rst,
            D => data3,
            Q => dbus30
        );
    
----1
--    process(clk)
--    begin
--        if rising_edge(clk) then
--            if dbus00<=dbus10 and dbus00<=dbus20 and dbus00<=dbus30 then
--                tmp0 <= dbus00;
--            elsif dbus10<=dbus00 and dbus01<=dbus20 and dbus00<=dbus30 then
--                tmp0 <= dbus10;
--            elsif dbus20<=dbus10 and dbus20<=dbus00 and dbus20<=dbus30 then
--                tmp0 <= dbus20;
--            elsif dbus30<=dbus10 and dbus30<=dbus20 and dbus30<=dbus00 then
--                tmp0 <= dbus30;
--            end if;
--        end if;
        
--        min <= tmp0;
--        ones <= std_logic_vector(to_unsigned(count_ones(tmp0), ones'length));
--     end process;   
---- end of 1       
      
      
--2 comment --1 and uncomment everything below this commend

    process(clk)
    begin
        if rising_edge(clk) then
            if dbus00<=dbus10 and dbus00<=dbus20 and dbus00<=dbus30 then
                tmp0 <= dbus00;
            end if;
        end if;    
    end process;
    
    L4: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus00,
            Q => dbus01
        );
            
    L5: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus10,
            Q => dbus11
        );
    
    L6: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus20,
            Q => dbus21
        );
        
    L7: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus30,
            Q => dbus31
        );
        

        
    process(clk)
    begin
        if rising_edge(clk) then
            if dbus11<=dbus01 and dbus11<=dbus21 and dbus11<=dbus31 then
                tmp1 <= dbus11;
            else
                tmp1 <= tmp0;
            end if;   
        end if;    
    end process;
    
    L8: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus01,
            Q => dbus02
        );
            
    L9: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus11,
            Q => dbus12
        );
    
    L10: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus21,
            Q => dbus22
        );
        
    L11: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus31,
            Q => dbus32
        ); 
        

        
    process(clk)
    begin
        if rising_edge(clk) then
            if dbus22<=dbus02 and dbus22<=dbus12 and dbus22<=dbus32 then
                tmp2 <= dbus22;
            else
                tmp2 <= tmp1;
            end if;
        end if;    
    end process;
    
    L12: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus02,
            Q => dbus03
        );
            
    L13: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus12,
            Q => dbus13
        );
    
    L14: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus22,
            Q => dbus23
        );
        
    L15: latch
        port map(
            clk => clk,
            rst => rst,
            D => dbus32,
            Q => dbus33
        ); 
    

    process(clk)
    begin
        if rising_edge(clk) then
            if dbus33<=dbus03 and dbus33<=dbus13 and dbus33<=dbus23 then
                tmp3 <= dbus33;
            else
                tmp3 <= tmp2;
            end if;
        end if; 
        
     
    end process;
    
    min <= tmp3;
    ones <= std_logic_vector(to_unsigned(count_ones(tmp3), ones'length));  
end Behavioral;

