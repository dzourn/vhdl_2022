-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Feb 23 23:04:18 2022
-- Host        : desktop running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/dimitris/di_vhdl/minimum_ones/minimum_ones.sim/sim_1/impl/func/xsim/top_module_tb_func_impl.vhd
-- Design      : top_module
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    \tmp0_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp0_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp0_reg[0]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end latch;

architecture STRUCTURE of latch is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tmp0[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmp0[3]_i_3_n_0\ : STD_LOGIC;
  signal \tmp0[3]_i_4_n_0\ : STD_LOGIC;
  signal \tmp0[3]_i_5_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\tmp0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B200"
    )
        port map (
      I0 => \tmp0_reg[0]\(3),
      I1 => \^q\(3),
      I2 => \tmp0[3]_i_2_n_0\,
      I3 => \tmp0[3]_i_3_n_0\,
      O => E(0)
    );
\tmp0[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp0_reg[0]\(0),
      I2 => \^q\(1),
      I3 => \tmp0_reg[0]\(1),
      I4 => \^q\(2),
      I5 => \tmp0_reg[0]\(2),
      O => \tmp0[3]_i_2_n_0\
    );
\tmp0[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80EE00E0"
    )
        port map (
      I0 => \tmp0_reg[0]_0\(3),
      I1 => \tmp0[3]_i_4_n_0\,
      I2 => \tmp0_reg[0]_1\(3),
      I3 => \^q\(3),
      I4 => \tmp0[3]_i_5_n_0\,
      O => \tmp0[3]_i_3_n_0\
    );
\tmp0[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp0_reg[0]_0\(0),
      I2 => \^q\(1),
      I3 => \tmp0_reg[0]_0\(1),
      I4 => \^q\(2),
      I5 => \tmp0_reg[0]_0\(2),
      O => \tmp0[3]_i_4_n_0\
    );
\tmp0[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp0_reg[0]_1\(0),
      I2 => \^q\(1),
      I3 => \tmp0_reg[0]_1\(1),
      I4 => \^q\(2),
      I5 => \tmp0_reg[0]_1\(2),
      O => \tmp0[3]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_0 : entity is "latch";
end latch_0;

architecture STRUCTURE of latch_0 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    \tmp2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp2_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp2_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp2_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_1 : entity is "latch";
end latch_1;

architecture STRUCTURE of latch_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tmp2[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmp2[3]_i_3_n_0\ : STD_LOGIC;
  signal \tmp2[3]_i_4_n_0\ : STD_LOGIC;
  signal \tmp2[3]_i_5_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(3),
      Q => \^q\(3),
      R => SR(0)
    );
\tmp2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAACCACCCCCCCCC"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp2_reg[3]\(0),
      I2 => \tmp2_reg[0]\(3),
      I3 => \^q\(3),
      I4 => \tmp2[3]_i_2_n_0\,
      I5 => \tmp2[3]_i_3_n_0\,
      O => D(0)
    );
\tmp2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAACCACCCCCCCCC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \tmp2_reg[3]\(1),
      I2 => \tmp2_reg[0]\(3),
      I3 => \^q\(3),
      I4 => \tmp2[3]_i_2_n_0\,
      I5 => \tmp2[3]_i_3_n_0\,
      O => D(1)
    );
\tmp2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAACCACCCCCCCCC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \tmp2_reg[3]\(2),
      I2 => \tmp2_reg[0]\(3),
      I3 => \^q\(3),
      I4 => \tmp2[3]_i_2_n_0\,
      I5 => \tmp2[3]_i_3_n_0\,
      O => D(2)
    );
\tmp2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0A2AAAA"
    )
        port map (
      I0 => \tmp2_reg[3]\(3),
      I1 => \tmp2_reg[0]\(3),
      I2 => \^q\(3),
      I3 => \tmp2[3]_i_2_n_0\,
      I4 => \tmp2[3]_i_3_n_0\,
      O => D(3)
    );
\tmp2[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp2_reg[0]\(0),
      I2 => \^q\(1),
      I3 => \tmp2_reg[0]\(1),
      I4 => \^q\(2),
      I5 => \tmp2_reg[0]\(2),
      O => \tmp2[3]_i_2_n_0\
    );
\tmp2[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80EE00E0"
    )
        port map (
      I0 => \tmp2_reg[3]_0\(3),
      I1 => \tmp2[3]_i_4_n_0\,
      I2 => \tmp2_reg[3]_1\(3),
      I3 => \^q\(3),
      I4 => \tmp2[3]_i_5_n_0\,
      O => \tmp2[3]_i_3_n_0\
    );
\tmp2[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp2_reg[3]_0\(0),
      I2 => \^q\(1),
      I3 => \tmp2_reg[3]_0\(1),
      I4 => \^q\(2),
      I5 => \tmp2_reg[3]_0\(2),
      O => \tmp2[3]_i_4_n_0\
    );
\tmp2[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp2_reg[3]_1\(0),
      I2 => \^q\(1),
      I3 => \tmp2_reg[3]_1\(1),
      I4 => \^q\(2),
      I5 => \tmp2_reg[3]_1\(2),
      O => \tmp2[3]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_10 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp0_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    \tmp1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp1_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp1_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp1_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_10 : entity is "latch";
end latch_10;

architecture STRUCTURE of latch_10 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tmp1[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmp1[3]_i_3_n_0\ : STD_LOGIC;
  signal \tmp1[3]_i_4_n_0\ : STD_LOGIC;
  signal \tmp1[3]_i_5_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\tmp1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAACCACCCCCCCCC"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp1_reg[3]\(0),
      I2 => \tmp1_reg[0]\(3),
      I3 => \^q\(3),
      I4 => \tmp1[3]_i_2_n_0\,
      I5 => \tmp1[3]_i_3_n_0\,
      O => \tmp0_reg[3]\(0)
    );
\tmp1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAACCACCCCCCCCC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \tmp1_reg[3]\(1),
      I2 => \tmp1_reg[0]\(3),
      I3 => \^q\(3),
      I4 => \tmp1[3]_i_2_n_0\,
      I5 => \tmp1[3]_i_3_n_0\,
      O => \tmp0_reg[3]\(1)
    );
\tmp1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAACCACCCCCCCCC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \tmp1_reg[3]\(2),
      I2 => \tmp1_reg[0]\(3),
      I3 => \^q\(3),
      I4 => \tmp1[3]_i_2_n_0\,
      I5 => \tmp1[3]_i_3_n_0\,
      O => \tmp0_reg[3]\(2)
    );
\tmp1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0A2AAAA"
    )
        port map (
      I0 => \tmp1_reg[3]\(3),
      I1 => \tmp1_reg[0]\(3),
      I2 => \^q\(3),
      I3 => \tmp1[3]_i_2_n_0\,
      I4 => \tmp1[3]_i_3_n_0\,
      O => \tmp0_reg[3]\(3)
    );
\tmp1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp1_reg[0]\(0),
      I2 => \^q\(1),
      I3 => \tmp1_reg[0]\(1),
      I4 => \^q\(2),
      I5 => \tmp1_reg[0]\(2),
      O => \tmp1[3]_i_2_n_0\
    );
\tmp1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80EE00E0"
    )
        port map (
      I0 => \tmp1_reg[3]_0\(3),
      I1 => \tmp1[3]_i_4_n_0\,
      I2 => \tmp1_reg[3]_1\(3),
      I3 => \^q\(3),
      I4 => \tmp1[3]_i_5_n_0\,
      O => \tmp1[3]_i_3_n_0\
    );
\tmp1[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp1_reg[3]_0\(0),
      I2 => \^q\(1),
      I3 => \tmp1_reg[3]_0\(1),
      I4 => \^q\(2),
      I5 => \tmp1_reg[3]_0\(2),
      O => \tmp1[3]_i_4_n_0\
    );
\tmp1[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \tmp1_reg[3]_1\(0),
      I2 => \^q\(1),
      I3 => \tmp1_reg[3]_1\(1),
      I4 => \^q\(2),
      I5 => \tmp1_reg[3]_1\(2),
      O => \tmp1[3]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_11 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_11 : entity is "latch";
end latch_11;

architecture STRUCTURE of latch_11 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_12 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_12 : entity is "latch";
end latch_12;

architecture STRUCTURE of latch_12 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_13 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_13 : entity is "latch";
end latch_13;

architecture STRUCTURE of latch_13 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_14 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_14 : entity is "latch";
end latch_14;

architecture STRUCTURE of latch_14 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_2 : entity is "latch";
end latch_2;

architecture STRUCTURE of latch_2 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_3 : entity is "latch";
end latch_3;

architecture STRUCTURE of latch_3 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_4 : entity is "latch";
end latch_4;

architecture STRUCTURE of latch_4 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q_reg[3]_0\(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_5 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_5 : entity is "latch";
end latch_5;

architecture STRUCTURE of latch_5 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_6 is
  port (
    \tmp2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp3_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp3_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp3_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_6 : entity is "latch";
end latch_6;

architecture STRUCTURE of latch_6 is
  signal \Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \tmp3[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmp3[3]_i_3_n_0\ : STD_LOGIC;
  signal \tmp3[3]_i_4_n_0\ : STD_LOGIC;
  signal \tmp3[3]_i_5_n_0\ : STD_LOGIC;
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \Q_reg_n_0_[0]\,
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => \Q_reg_n_0_[1]\,
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => \Q_reg_n_0_[2]\,
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => \Q_reg_n_0_[3]\,
      R => SR(0)
    );
\tmp3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAACCACCCCCCCCC"
    )
        port map (
      I0 => \Q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \tmp3_reg[0]\(3),
      I3 => \Q_reg_n_0_[3]\,
      I4 => \tmp3[3]_i_2_n_0\,
      I5 => \tmp3[3]_i_3_n_0\,
      O => \tmp2_reg[3]\(0)
    );
\tmp3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAACCACCCCCCCCC"
    )
        port map (
      I0 => \Q_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => \tmp3_reg[0]\(3),
      I3 => \Q_reg_n_0_[3]\,
      I4 => \tmp3[3]_i_2_n_0\,
      I5 => \tmp3[3]_i_3_n_0\,
      O => \tmp2_reg[3]\(1)
    );
\tmp3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAACCACCCCCCCCC"
    )
        port map (
      I0 => \Q_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => \tmp3_reg[0]\(3),
      I3 => \Q_reg_n_0_[3]\,
      I4 => \tmp3[3]_i_2_n_0\,
      I5 => \tmp3[3]_i_3_n_0\,
      O => \tmp2_reg[3]\(2)
    );
\tmp3[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0A2AAAA"
    )
        port map (
      I0 => Q(3),
      I1 => \tmp3_reg[0]\(3),
      I2 => \Q_reg_n_0_[3]\,
      I3 => \tmp3[3]_i_2_n_0\,
      I4 => \tmp3[3]_i_3_n_0\,
      O => \tmp2_reg[3]\(3)
    );
\tmp3[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \Q_reg_n_0_[0]\,
      I1 => \tmp3_reg[0]\(0),
      I2 => \Q_reg_n_0_[1]\,
      I3 => \tmp3_reg[0]\(1),
      I4 => \Q_reg_n_0_[2]\,
      I5 => \tmp3_reg[0]\(2),
      O => \tmp3[3]_i_2_n_0\
    );
\tmp3[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80EE00E0"
    )
        port map (
      I0 => \tmp3_reg[3]\(3),
      I1 => \tmp3[3]_i_4_n_0\,
      I2 => \tmp3_reg[3]_0\(3),
      I3 => \Q_reg_n_0_[3]\,
      I4 => \tmp3[3]_i_5_n_0\,
      O => \tmp3[3]_i_3_n_0\
    );
\tmp3[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \Q_reg_n_0_[0]\,
      I1 => \tmp3_reg[3]\(0),
      I2 => \Q_reg_n_0_[1]\,
      I3 => \tmp3_reg[3]\(1),
      I4 => \Q_reg_n_0_[2]\,
      I5 => \tmp3_reg[3]\(2),
      O => \tmp3[3]_i_4_n_0\
    );
\tmp3[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \Q_reg_n_0_[0]\,
      I1 => \tmp3_reg[3]_0\(0),
      I2 => \Q_reg_n_0_[1]\,
      I3 => \tmp3_reg[3]_0\(1),
      I4 => \Q_reg_n_0_[2]\,
      I5 => \tmp3_reg[3]_0\(2),
      O => \tmp3[3]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_7 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_7 : entity is "latch";
end latch_7;

architecture STRUCTURE of latch_7 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_8 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_8 : entity is "latch";
end latch_8;

architecture STRUCTURE of latch_8 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity latch_9 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of latch_9 : entity is "latch";
end latch_9;

architecture STRUCTURE of latch_9 is
begin
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_module is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    min : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ones : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_module : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of top_module : entity is "5d68c6af";
  attribute WIDTH : integer;
  attribute WIDTH of top_module : entity is 4;
end top_module;

architecture STRUCTURE of top_module is
  signal L10_n_0 : STD_LOGIC;
  signal L10_n_1 : STD_LOGIC;
  signal L10_n_2 : STD_LOGIC;
  signal L10_n_3 : STD_LOGIC;
  signal L10_n_4 : STD_LOGIC;
  signal L10_n_5 : STD_LOGIC;
  signal L10_n_6 : STD_LOGIC;
  signal L10_n_7 : STD_LOGIC;
  signal L11_n_0 : STD_LOGIC;
  signal L11_n_1 : STD_LOGIC;
  signal L11_n_2 : STD_LOGIC;
  signal L11_n_3 : STD_LOGIC;
  signal L12_n_0 : STD_LOGIC;
  signal L12_n_1 : STD_LOGIC;
  signal L12_n_2 : STD_LOGIC;
  signal L12_n_3 : STD_LOGIC;
  signal L13_n_0 : STD_LOGIC;
  signal L13_n_1 : STD_LOGIC;
  signal L13_n_2 : STD_LOGIC;
  signal L13_n_3 : STD_LOGIC;
  signal L14_n_0 : STD_LOGIC;
  signal L14_n_1 : STD_LOGIC;
  signal L14_n_2 : STD_LOGIC;
  signal L14_n_3 : STD_LOGIC;
  signal L15_n_0 : STD_LOGIC;
  signal L15_n_1 : STD_LOGIC;
  signal L15_n_2 : STD_LOGIC;
  signal L15_n_3 : STD_LOGIC;
  signal L1_n_0 : STD_LOGIC;
  signal L1_n_1 : STD_LOGIC;
  signal L1_n_2 : STD_LOGIC;
  signal L1_n_3 : STD_LOGIC;
  signal L2_n_0 : STD_LOGIC;
  signal L2_n_1 : STD_LOGIC;
  signal L2_n_2 : STD_LOGIC;
  signal L2_n_3 : STD_LOGIC;
  signal L3_n_0 : STD_LOGIC;
  signal L3_n_1 : STD_LOGIC;
  signal L3_n_2 : STD_LOGIC;
  signal L3_n_3 : STD_LOGIC;
  signal L4_n_0 : STD_LOGIC;
  signal L4_n_1 : STD_LOGIC;
  signal L4_n_2 : STD_LOGIC;
  signal L4_n_3 : STD_LOGIC;
  signal L5_n_0 : STD_LOGIC;
  signal L5_n_1 : STD_LOGIC;
  signal L5_n_2 : STD_LOGIC;
  signal L5_n_3 : STD_LOGIC;
  signal L6_n_0 : STD_LOGIC;
  signal L6_n_1 : STD_LOGIC;
  signal L6_n_2 : STD_LOGIC;
  signal L6_n_3 : STD_LOGIC;
  signal L7_n_0 : STD_LOGIC;
  signal L7_n_1 : STD_LOGIC;
  signal L7_n_2 : STD_LOGIC;
  signal L7_n_3 : STD_LOGIC;
  signal L8_n_0 : STD_LOGIC;
  signal L8_n_1 : STD_LOGIC;
  signal L8_n_2 : STD_LOGIC;
  signal L8_n_3 : STD_LOGIC;
  signal L9_n_0 : STD_LOGIC;
  signal L9_n_1 : STD_LOGIC;
  signal L9_n_2 : STD_LOGIC;
  signal L9_n_3 : STD_LOGIC;
  signal Q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal data0_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data1_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data2_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data3_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal min_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ones_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_IBUF : STD_LOGIC;
  signal tmp0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tmp00 : STD_LOGIC;
  signal tmp1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tmp2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tmp3_reg[0]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp3_reg[1]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp3_reg[2]_lopt_replica_1\ : STD_LOGIC;
  signal \tmp3_reg[3]_lopt_replica_1\ : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \min_OBUF[0]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \min_OBUF[1]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \min_OBUF[2]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \min_OBUF[3]_inst\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of \tmp3_reg[0]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp3_reg[0]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp3_reg[1]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp3_reg[1]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp3_reg[2]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp3_reg[2]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \tmp3_reg[3]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \tmp3_reg[3]_lopt_replica\ : label is "SWEEP";
begin
L0: entity work.latch
     port map (
      CLK => clk_IBUF_BUFG,
      D(3 downto 0) => data0_IBUF(3 downto 0),
      E(0) => tmp00,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => rst_IBUF,
      \tmp0_reg[0]\(3) => L1_n_0,
      \tmp0_reg[0]\(2) => L1_n_1,
      \tmp0_reg[0]\(1) => L1_n_2,
      \tmp0_reg[0]\(0) => L1_n_3,
      \tmp0_reg[0]_0\(3) => L3_n_0,
      \tmp0_reg[0]_0\(2) => L3_n_1,
      \tmp0_reg[0]_0\(1) => L3_n_2,
      \tmp0_reg[0]_0\(0) => L3_n_3,
      \tmp0_reg[0]_1\(3) => L2_n_0,
      \tmp0_reg[0]_1\(2) => L2_n_1,
      \tmp0_reg[0]_1\(1) => L2_n_2,
      \tmp0_reg[0]_1\(0) => L2_n_3
    );
L1: entity work.latch_0
     port map (
      CLK => clk_IBUF_BUFG,
      D(3 downto 0) => data1_IBUF(3 downto 0),
      Q(3) => L1_n_0,
      Q(2) => L1_n_1,
      Q(1) => L1_n_2,
      Q(0) => L1_n_3,
      SR(0) => rst_IBUF
    );
L10: entity work.latch_1
     port map (
      CLK => clk_IBUF_BUFG,
      D(3) => L10_n_4,
      D(2) => L10_n_5,
      D(1) => L10_n_6,
      D(0) => L10_n_7,
      Q(3) => L10_n_0,
      Q(2) => L10_n_1,
      Q(1) => L10_n_2,
      Q(0) => L10_n_3,
      \Q_reg[3]_0\(3) => L6_n_0,
      \Q_reg[3]_0\(2) => L6_n_1,
      \Q_reg[3]_0\(1) => L6_n_2,
      \Q_reg[3]_0\(0) => L6_n_3,
      SR(0) => rst_IBUF,
      \tmp2_reg[0]\(3) => L8_n_0,
      \tmp2_reg[0]\(2) => L8_n_1,
      \tmp2_reg[0]\(1) => L8_n_2,
      \tmp2_reg[0]\(0) => L8_n_3,
      \tmp2_reg[3]\(3 downto 0) => tmp1(3 downto 0),
      \tmp2_reg[3]_0\(3) => L11_n_0,
      \tmp2_reg[3]_0\(2) => L11_n_1,
      \tmp2_reg[3]_0\(1) => L11_n_2,
      \tmp2_reg[3]_0\(0) => L11_n_3,
      \tmp2_reg[3]_1\(3) => L9_n_0,
      \tmp2_reg[3]_1\(2) => L9_n_1,
      \tmp2_reg[3]_1\(1) => L9_n_2,
      \tmp2_reg[3]_1\(0) => L9_n_3
    );
L11: entity work.latch_2
     port map (
      CLK => clk_IBUF_BUFG,
      Q(3) => L11_n_0,
      Q(2) => L11_n_1,
      Q(1) => L11_n_2,
      Q(0) => L11_n_3,
      \Q_reg[3]_0\(3) => L7_n_0,
      \Q_reg[3]_0\(2) => L7_n_1,
      \Q_reg[3]_0\(1) => L7_n_2,
      \Q_reg[3]_0\(0) => L7_n_3,
      SR(0) => rst_IBUF
    );
L12: entity work.latch_3
     port map (
      CLK => clk_IBUF_BUFG,
      Q(3) => L12_n_0,
      Q(2) => L12_n_1,
      Q(1) => L12_n_2,
      Q(0) => L12_n_3,
      \Q_reg[3]_0\(3) => L8_n_0,
      \Q_reg[3]_0\(2) => L8_n_1,
      \Q_reg[3]_0\(1) => L8_n_2,
      \Q_reg[3]_0\(0) => L8_n_3,
      SR(0) => rst_IBUF
    );
L13: entity work.latch_4
     port map (
      CLK => clk_IBUF_BUFG,
      Q(3) => L13_n_0,
      Q(2) => L13_n_1,
      Q(1) => L13_n_2,
      Q(0) => L13_n_3,
      \Q_reg[3]_0\(3) => L9_n_0,
      \Q_reg[3]_0\(2) => L9_n_1,
      \Q_reg[3]_0\(1) => L9_n_2,
      \Q_reg[3]_0\(0) => L9_n_3,
      SR(0) => rst_IBUF
    );
L14: entity work.latch_5
     port map (
      CLK => clk_IBUF_BUFG,
      D(3) => L10_n_0,
      D(2) => L10_n_1,
      D(1) => L10_n_2,
      D(0) => L10_n_3,
      Q(3) => L14_n_0,
      Q(2) => L14_n_1,
      Q(1) => L14_n_2,
      Q(0) => L14_n_3,
      SR(0) => rst_IBUF
    );
L15: entity work.latch_6
     port map (
      CLK => clk_IBUF_BUFG,
      D(3) => L11_n_0,
      D(2) => L11_n_1,
      D(1) => L11_n_2,
      D(0) => L11_n_3,
      Q(3 downto 0) => tmp2(3 downto 0),
      SR(0) => rst_IBUF,
      \tmp2_reg[3]\(3) => L15_n_0,
      \tmp2_reg[3]\(2) => L15_n_1,
      \tmp2_reg[3]\(1) => L15_n_2,
      \tmp2_reg[3]\(0) => L15_n_3,
      \tmp3_reg[0]\(3) => L12_n_0,
      \tmp3_reg[0]\(2) => L12_n_1,
      \tmp3_reg[0]\(1) => L12_n_2,
      \tmp3_reg[0]\(0) => L12_n_3,
      \tmp3_reg[3]\(3) => L14_n_0,
      \tmp3_reg[3]\(2) => L14_n_1,
      \tmp3_reg[3]\(1) => L14_n_2,
      \tmp3_reg[3]\(0) => L14_n_3,
      \tmp3_reg[3]_0\(3) => L13_n_0,
      \tmp3_reg[3]_0\(2) => L13_n_1,
      \tmp3_reg[3]_0\(1) => L13_n_2,
      \tmp3_reg[3]_0\(0) => L13_n_3
    );
L2: entity work.latch_7
     port map (
      CLK => clk_IBUF_BUFG,
      D(3 downto 0) => data2_IBUF(3 downto 0),
      Q(3) => L2_n_0,
      Q(2) => L2_n_1,
      Q(1) => L2_n_2,
      Q(0) => L2_n_3,
      SR(0) => rst_IBUF
    );
L3: entity work.latch_8
     port map (
      CLK => clk_IBUF_BUFG,
      D(3 downto 0) => data3_IBUF(3 downto 0),
      Q(3) => L3_n_0,
      Q(2) => L3_n_1,
      Q(1) => L3_n_2,
      Q(0) => L3_n_3,
      SR(0) => rst_IBUF
    );
L4: entity work.latch_9
     port map (
      CLK => clk_IBUF_BUFG,
      D(3 downto 0) => Q(3 downto 0),
      Q(3) => L4_n_0,
      Q(2) => L4_n_1,
      Q(1) => L4_n_2,
      Q(0) => L4_n_3,
      SR(0) => rst_IBUF
    );
L5: entity work.latch_10
     port map (
      CLK => clk_IBUF_BUFG,
      D(3) => L1_n_0,
      D(2) => L1_n_1,
      D(1) => L1_n_2,
      D(0) => L1_n_3,
      Q(3) => L5_n_0,
      Q(2) => L5_n_1,
      Q(1) => L5_n_2,
      Q(0) => L5_n_3,
      SR(0) => rst_IBUF,
      \tmp0_reg[3]\(3 downto 0) => p_0_in(3 downto 0),
      \tmp1_reg[0]\(3) => L4_n_0,
      \tmp1_reg[0]\(2) => L4_n_1,
      \tmp1_reg[0]\(1) => L4_n_2,
      \tmp1_reg[0]\(0) => L4_n_3,
      \tmp1_reg[3]\(3 downto 0) => tmp0(3 downto 0),
      \tmp1_reg[3]_0\(3) => L7_n_0,
      \tmp1_reg[3]_0\(2) => L7_n_1,
      \tmp1_reg[3]_0\(1) => L7_n_2,
      \tmp1_reg[3]_0\(0) => L7_n_3,
      \tmp1_reg[3]_1\(3) => L6_n_0,
      \tmp1_reg[3]_1\(2) => L6_n_1,
      \tmp1_reg[3]_1\(1) => L6_n_2,
      \tmp1_reg[3]_1\(0) => L6_n_3
    );
L6: entity work.latch_11
     port map (
      CLK => clk_IBUF_BUFG,
      D(3) => L2_n_0,
      D(2) => L2_n_1,
      D(1) => L2_n_2,
      D(0) => L2_n_3,
      Q(3) => L6_n_0,
      Q(2) => L6_n_1,
      Q(1) => L6_n_2,
      Q(0) => L6_n_3,
      SR(0) => rst_IBUF
    );
L7: entity work.latch_12
     port map (
      CLK => clk_IBUF_BUFG,
      D(3) => L3_n_0,
      D(2) => L3_n_1,
      D(1) => L3_n_2,
      D(0) => L3_n_3,
      Q(3) => L7_n_0,
      Q(2) => L7_n_1,
      Q(1) => L7_n_2,
      Q(0) => L7_n_3,
      SR(0) => rst_IBUF
    );
L8: entity work.latch_13
     port map (
      CLK => clk_IBUF_BUFG,
      D(3) => L4_n_0,
      D(2) => L4_n_1,
      D(1) => L4_n_2,
      D(0) => L4_n_3,
      Q(3) => L8_n_0,
      Q(2) => L8_n_1,
      Q(1) => L8_n_2,
      Q(0) => L8_n_3,
      SR(0) => rst_IBUF
    );
L9: entity work.latch_14
     port map (
      CLK => clk_IBUF_BUFG,
      D(3) => L5_n_0,
      D(2) => L5_n_1,
      D(1) => L5_n_2,
      D(0) => L5_n_3,
      Q(3) => L9_n_0,
      Q(2) => L9_n_1,
      Q(1) => L9_n_2,
      Q(0) => L9_n_3,
      SR(0) => rst_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\data0_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(0),
      O => data0_IBUF(0)
    );
\data0_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(1),
      O => data0_IBUF(1)
    );
\data0_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(2),
      O => data0_IBUF(2)
    );
\data0_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data0(3),
      O => data0_IBUF(3)
    );
\data1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(0),
      O => data1_IBUF(0)
    );
\data1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(1),
      O => data1_IBUF(1)
    );
\data1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(2),
      O => data1_IBUF(2)
    );
\data1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data1(3),
      O => data1_IBUF(3)
    );
\data2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(0),
      O => data2_IBUF(0)
    );
\data2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(1),
      O => data2_IBUF(1)
    );
\data2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(2),
      O => data2_IBUF(2)
    );
\data2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data2(3),
      O => data2_IBUF(3)
    );
\data3_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(0),
      O => data3_IBUF(0)
    );
\data3_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(1),
      O => data3_IBUF(1)
    );
\data3_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(2),
      O => data3_IBUF(2)
    );
\data3_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data3(3),
      O => data3_IBUF(3)
    );
\min_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \tmp3_reg[0]_lopt_replica_1\,
      O => min(0)
    );
\min_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \tmp3_reg[1]_lopt_replica_1\,
      O => min(1)
    );
\min_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \tmp3_reg[2]_lopt_replica_1\,
      O => min(2)
    );
\min_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \tmp3_reg[3]_lopt_replica_1\,
      O => min(3)
    );
\ones_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ones_OBUF(0),
      O => ones(0)
    );
\ones_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => min_OBUF(2),
      I1 => min_OBUF(3),
      I2 => min_OBUF(1),
      I3 => min_OBUF(0),
      O => ones_OBUF(0)
    );
\ones_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ones_OBUF(1),
      O => ones(1)
    );
\ones_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => min_OBUF(0),
      I1 => min_OBUF(1),
      I2 => min_OBUF(3),
      I3 => min_OBUF(2),
      O => ones_OBUF(1)
    );
\ones_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ones_OBUF(2),
      O => ones(2)
    );
\ones_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => min_OBUF(3),
      I1 => min_OBUF(2),
      I2 => min_OBUF(0),
      I3 => min_OBUF(1),
      O => ones_OBUF(2)
    );
\ones_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ones(3)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\tmp0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmp00,
      D => Q(0),
      Q => tmp0(0),
      R => '0'
    );
\tmp0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmp00,
      D => Q(1),
      Q => tmp0(1),
      R => '0'
    );
\tmp0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmp00,
      D => Q(2),
      Q => tmp0(2),
      R => '0'
    );
\tmp0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmp00,
      D => Q(3),
      Q => tmp0(3),
      R => '0'
    );
\tmp1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(0),
      Q => tmp1(0),
      R => '0'
    );
\tmp1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(1),
      Q => tmp1(1),
      R => '0'
    );
\tmp1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(2),
      Q => tmp1(2),
      R => '0'
    );
\tmp1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in(3),
      Q => tmp1(3),
      R => '0'
    );
\tmp2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L10_n_7,
      Q => tmp2(0),
      R => '0'
    );
\tmp2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L10_n_6,
      Q => tmp2(1),
      R => '0'
    );
\tmp2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L10_n_5,
      Q => tmp2(2),
      R => '0'
    );
\tmp2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L10_n_4,
      Q => tmp2(3),
      R => '0'
    );
\tmp3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L15_n_3,
      Q => min_OBUF(0),
      R => '0'
    );
\tmp3_reg[0]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L15_n_3,
      Q => \tmp3_reg[0]_lopt_replica_1\,
      R => '0'
    );
\tmp3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L15_n_2,
      Q => min_OBUF(1),
      R => '0'
    );
\tmp3_reg[1]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L15_n_2,
      Q => \tmp3_reg[1]_lopt_replica_1\,
      R => '0'
    );
\tmp3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L15_n_1,
      Q => min_OBUF(2),
      R => '0'
    );
\tmp3_reg[2]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L15_n_1,
      Q => \tmp3_reg[2]_lopt_replica_1\,
      R => '0'
    );
\tmp3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L15_n_0,
      Q => min_OBUF(3),
      R => '0'
    );
\tmp3_reg[3]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => L15_n_0,
      Q => \tmp3_reg[3]_lopt_replica_1\,
      R => '0'
    );
end STRUCTURE;
