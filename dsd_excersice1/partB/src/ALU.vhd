----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 12/31/2021 06:09:47 PM
-- Design Name:
-- Module Name: ALU - Dataflow
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

--entity ALU is
--    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
--           b : in STD_LOGIC_VECTOR (2 downto 0);
--           Control : in STD_LOGIC;
--           Result : out STD_LOGIC_VECTOR (2 downto 0);
--           OVF : out STD_LOGIC);
--end ALU;

--a
--architecture Dataflow of ALU is
--    signal res_add_un: unsigned(3 downto 0);
--    signal res_mul_un: unsigned(3 downto 0);
--    signal res_add_sig: std_logic_vector(3 downto 0);
--    signal res_mul_sig: std_logic_vector(3 downto 0);
--    signal ctr_tmp: std_logic_vector(3 downto 0);
--    signal res_tmp_sig: std_logic_vector(3 downto 0);
--begin
--    --better way to assign signal
--    ctr_tmp(0) <= Control;
--    ctr_tmp(1) <= Control;
--    ctr_tmp(2) <= Control;
--    ctr_tmp(3) <= Control;
--    res_add_un <= unsigned('0'&b) + unsigned('0'&a);
--    res_mul_un <= unsigned(a&'0');
--    res_add_sig <=std_logic_vector(res_add_un);
--    res_mul_sig <=std_logic_vector(res_mul_un);
    
--    res_tmp_sig <= (res_mul_sig and ctr_tmp) or (res_add_sig and not ctr_tmp);
--    Result <= std_logic_vector(res_tmp_sig(2 downto 0));
--    OVF <= res_tmp_sig(3);
       
--end Dataflow;

--b
--architecture Dataflow of ALU is
--    signal res_tmp: unsigned(3 downto 0);
--begin
--    with Control select
--        res_tmp <= resize(unsigned(b),4) + resize(unsigned(a),4) when '0',
--                   unsigned(a&'0') when others;

--    Result <= std_logic_vector(res_tmp(2 downto 0));
--    OVF <= res_tmp(3);
--end Dataflow;

--c
--architecture Behavioral of ALU is
--begin
--    MY_PROC: process (Control, a, b)
--    variable res_tmp: unsigned(3 downto 0);
--    begin
--        if Control = '0' then
--            res_tmp := unsigned('0'&b) + unsigned('0'&a);
--        else
--            res_tmp := unsigned(a&'0');
--        end if;

--        Result <= std_logic_vector(res_tmp(2 downto 0));
--        OVF <= res_tmp(3);
--    end process MY_PROC;
--end Behavioral;

--d
--architecture Behavioral2 of ALU is
--    signal res_tmp: unsigned(3 downto 0);
--begin
--    MY_PROC: process (Control, a, b)
--    begin
--        case Control is
--            when '0' => res_tmp <= unsigned('0'&b) + unsigned('0'&a);
--            when others => res_tmp <= unsigned(a&'0');
--        end case;
--        Result <= std_logic_vector(res_tmp(2 downto 0));
--        OVF <= res_tmp(3);
--    end process MY_PROC;
--end Behavioral2;

--e
entity ALU is
    generic (WIDTH : positive := 3);
    Port ( a : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           Control : in STD_LOGIC;
           Result : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           OVF : out STD_LOGIC);
end ALU;


--architecture Behavioral of ALU is
--begin
--    MY_PROC: process (Control, a, b)
--    variable res_tmp: unsigned(WIDTH downto 0);
--    begin
--        if Control = '0' then
--            res_tmp := unsigned('0'&b) + unsigned('0'&a);
--        else
--            res_tmp := unsigned(a&'0');
--        end if;

--        Result <= std_logic_vector(res_tmp(WIDTH-1 downto 0));
--        OVF <= res_tmp(WIDTH);
--    end process MY_PROC;
--end Behavioral;

--f
architecture Structural of ALU is
    COMPONENT Sum_ab is
        GENERIC (WIDTH : positive); --width of component
        PORT(a: in std_logic_vector(WIDTH-1 downto 0);
             b: in std_logic_vector(WIDTH-1 downto 0);
            res: out std_logic_vector(WIDTH-1 downto 0);
            ovf: out std_logic);
    end component Sum_ab;
    
    COMPONENT Double_a is
        GENERIC (WIDTH : positive); --width of component
        PORT(a: in std_logic_vector(WIDTH-1 downto 0);
            res: out std_logic_vector(WIDTH-1 downto 0);
            ovf: out std_logic);
    end component Double_a;
    
    signal res_add: std_logic_vector(WIDTH-1 downto 0);
    signal ovf_add: std_logic;
    signal res_mul: std_logic_vector(WIDTH-1 downto 0);
    signal ovf_mul: std_logic;
begin
   
S1: Sum_ab GENERIC MAP(WIDTH) PORT MAP(a,b,res_add,ovf_add);  
D1: Double_a GENERIC MAP(WIDTH) PORT MAP(a, res_mul, ovf_mul);

   MY_PROC: process (Control, a, b)
    begin
       if Control = '0' then
            Result <= res_add(WIDTH-1 downto 0);
            OVF <= ovf_add;
       else
            Result <= res_mul(WIDTH-1 downto 0);
            OVF <= ovf_mul;
       end if;
    end process MY_PROC;
end Structural;
