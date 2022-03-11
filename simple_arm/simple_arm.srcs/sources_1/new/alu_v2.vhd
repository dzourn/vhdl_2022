----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2022 09:50:37 PM
-- Design Name: 
-- Module Name: alu_v2 - Behavioral
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

entity alu_v2 is
    generic(width : positive := 32);
    Port ( srcA : in STD_LOGIC_VECTOR (width-1 downto 0);
           srcB : in STD_LOGIC_VECTOR (width-1 downto 0);
           ALUControl : in STD_LOGIC_VECTOR (3 downto 0);
           shamt : in STD_LOGIC_VECTOR(4 downto 0);
           ALUResult : out STD_LOGIC_VECTOR (width-1 downto 0);
           Flags : out STD_LOGIC_VECTOR (3 downto 0));
end alu_v2;

architecture Behavioral of alu_v2 is
    signal add_sub : std_logic_vector(32 downto 0) := (others => '0');
    signal and_or: std_logic_vector(32 downto 0) := (others => '0');
    signal mov_mvn: std_logic_vector(32 downto 0) := (others => '0');
    signal x_or: std_logic_vector(32 downto 0) := (others => '0');
    signal lsl_lsr: std_logic_vector(32 downto 0) := (others => '0');
    signal asr_ror: std_logic_vector(32 downto 0) := (others => '0');
    
    signal ext_A: std_logic_vector(32 downto 0) := (others => '0');
    signal ext_B: std_logic_vector(32 downto 0) := (others => '0');
    
    signal mux_as_ao : std_logic_vector(32 downto 0) := (others => '0');
    signal mux_mm_xr: std_logic_vector(32 downto 0) := (others => '0');
    signal mux_ll_ar: std_logic_vector(32 downto 0) := (others => '0');
    
    signal mux_asao_mmxr: std_logic_vector(32 downto 0) := (others => '0');
    signal mux_asaommxr_llar: std_logic_vector(32 downto 0) := (others => '0');
    
    signal V,C,N,Z: std_logic := '0';
    
    component mux is
    generic( width: positive := 32);
    Port ( a : in STD_LOGIC_VECTOR (width-1 downto 0);
           b : in STD_LOGIC_VECTOR (width-1 downto 0);
           s : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (width-1 downto 0));
    end component mux;
    
begin
    ext_A <= '0'&srcA;
    ext_B <= '0'&srcB;
    
    process(ALUControl, ext_A, ext_B) is
    begin
        case ALUControl(0) is
            when '0' => 
                add_sub <= std_logic_vector(signed(ext_A) + signed(ext_B));
                and_or <= ext_A and ext_B;
                mov_mvn <= ext_B;
                x_or <= ext_A xor ext_B;
                lsl_lsr <= std_logic_vector(signed(ext_B) sll to_integer(unsigned(shamt)));
                asr_ror <= std_logic_vector(to_stdlogicvector(to_bitvector(ext_B) sra to_integer(unsigned(shamt))));
            
            when '1' =>
                add_sub <= std_logic_vector(signed(ext_A) - signed(ext_B));                                         
                and_or <= ext_A or ext_B;                                                                          
                mov_mvn <= not ext_B;                                                                                   
                x_or <= ext_A xor ext_B;                                                                            
                lsl_lsr <= std_logic_vector(signed(ext_B) srl to_integer(unsigned(shamt)));                         
                asr_ror <= std_logic_vector(signed(ext_B) ror to_integer(unsigned(shamt)));
                
            when others =>
                add_sub <= (others => 'X');                                       
                and_or <= (others => 'X');                                                                          
                mov_mvn <= (others => 'X');                                                                                   
                x_or <= (others => 'X');                                                                            
                lsl_lsr <= (others => 'X');                         
                asr_ror <= (others => 'X');
         end case;          
    end process;
    
    mux_asao: mux 
        generic map( width => 33) --32 bit 
        port map (a => add_sub, b => and_or, s => ALUControl(1), y => mux_as_ao);
    
    mux_mmxr: mux
        generic map( width => 33) --32 bit                    
        port map (a => mov_mvn, b => x_or, s => ALUControl(1), y => mux_mm_xr); 
    
    mux_llar: mux
        generic map( width => 33) --32 bit                    
        port map (a => lsl_lsr, b => asr_ror, s =>  ALUControl(1), y=> mux_ll_ar);
    
    mux_asaommxr: mux
        generic map( width => 33) --32 bit                    
        port map (a => mux_as_ao, b => mux_mm_xr, s => ALUControl(2), y => mux_asao_mmxr); 
    
    mux_asaommxrllar: mux
        generic map( width => 33) --32 bit                    
        port map ( a => mux_asao_mmxr, b => mux_ll_ar, s => ALUControl(3), y => mux_asaommxr_llar);
    
    process(mux_asaommxr_llar) is
    begin
        if mux_asaommxr_llar = X"0000000" then
            Z <= '1';
        end if;
    end process;
    
    V <= add_sub(32) and (not ALUControl(0));
    C <= add_sub(32) and (not ALUControl(1));
    N <= mux_asaommxr_llar(31);
    
    Flags(0) <= V;
    Flags(1) <= C;
    Flags(2) <= N;
    Flags(3) <= Z;
    ALUResult <= mux_asaommxr_llar(31 downto 0);
    
end Behavioral;
