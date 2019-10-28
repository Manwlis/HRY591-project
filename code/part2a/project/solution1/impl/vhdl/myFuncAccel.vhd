-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myFuncAccel is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    size : IN STD_LOGIC_VECTOR (31 downto 0);
    dim : IN STD_LOGIC_VECTOR (31 downto 0);
    threshold : IN STD_LOGIC_VECTOR (31 downto 0);
    data0_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    data0_ce0 : OUT STD_LOGIC;
    data0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    data1_req_din : OUT STD_LOGIC;
    data1_req_full_n : IN STD_LOGIC;
    data1_req_write : OUT STD_LOGIC;
    data1_rsp_empty_n : IN STD_LOGIC;
    data1_rsp_read : OUT STD_LOGIC;
    data1_address : OUT STD_LOGIC_VECTOR (31 downto 0);
    data1_datain : IN STD_LOGIC_VECTOR (31 downto 0);
    data1_dataout : OUT STD_LOGIC_VECTOR (31 downto 0);
    data1_size : OUT STD_LOGIC_VECTOR (31 downto 0);
    data2_req_din : OUT STD_LOGIC;
    data2_req_full_n : IN STD_LOGIC;
    data2_req_write : OUT STD_LOGIC;
    data2_rsp_empty_n : IN STD_LOGIC;
    data2_rsp_read : OUT STD_LOGIC;
    data2_address : OUT STD_LOGIC_VECTOR (31 downto 0);
    data2_datain : IN STD_LOGIC_VECTOR (31 downto 0);
    data2_dataout : OUT STD_LOGIC_VECTOR (31 downto 0);
    data2_size : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myFuncAccel is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "myFuncAccel,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010i-clg225-1L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=104801,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=975,HLS_SYN_LUT=1627,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (15 downto 0) := "0000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (15 downto 0) := "0000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (15 downto 0) := "0000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (15 downto 0) := "0000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (15 downto 0) := "0000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (15 downto 0) := "0000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (15 downto 0) := "0001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (15 downto 0) := "0010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (15 downto 0) := "0100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (15 downto 0) := "1000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal bitcast_ln43_1_fu_240_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln43_3_fu_248_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln20_fu_254_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln20_reg_465 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_264_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_473 : STD_LOGIC_VECTOR (31 downto 0);
    signal data1_addr_reg_478 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln20_fu_259_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal data2_addr_reg_484 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln26_fu_286_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln26_reg_489 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal k_fu_296_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_reg_497 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln46_fu_302_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln46_reg_502 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln26_fu_291_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal l_fu_313_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal l_reg_509 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln33_fu_308_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state5 : BOOLEAN;
    signal data1_addr_read_reg_519 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln43_2_fu_345_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_fu_230_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_reg_537 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal grp_fu_225_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal r_fu_411_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal l_2_fu_422_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal icmp_ln47_fu_417_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op121_write_state16 : BOOLEAN;
    signal ap_block_state16 : BOOLEAN;
    signal i_0_reg_132 : STD_LOGIC_VECTOR (31 downto 0);
    signal phi_mul1_reg_143 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_0_reg_154 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_0_reg_166 : STD_LOGIC_VECTOR (31 downto 0);
    signal phi_mul_reg_178 : STD_LOGIC_VECTOR (31 downto 0);
    signal l_0_reg_190 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal temp_0_reg_201 : STD_LOGIC_VECTOR (31 downto 0);
    signal l_1_reg_214 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln35_fu_325_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln37_fu_270_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln37_fu_330_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_fu_428_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal trunc_ln43_fu_244_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal add_ln35_fu_319_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_336_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal bitcast_ln43_fu_351_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_355_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln43_1_fu_365_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln43_1_fu_375_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_fu_369_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln43_fu_381_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln43_1_fu_387_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln43_fu_391_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln43_1_fu_397_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln43_fu_403_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_235_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (15 downto 0);

    component myFuncAccel_fadd_32ns_32ns_32_5_full_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component myFuncAccel_fmul_32ns_32ns_32_4_max_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component myFuncAccel_fcmp_32ns_32ns_1_2_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    myFuncAccel_fadd_32ns_32ns_32_5_full_dsp_1_U1 : component myFuncAccel_fadd_32ns_32ns_32_5_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => temp_0_reg_201,
        din1 => tmp_2_reg_537,
        ce => ap_const_logic_1,
        dout => grp_fu_225_p2);

    myFuncAccel_fmul_32ns_32ns_32_4_max_dsp_1_U2 : component myFuncAccel_fmul_32ns_32ns_32_4_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => data0_q0,
        din1 => data1_addr_read_reg_519,
        ce => ap_const_logic_1,
        dout => grp_fu_230_p2);

    myFuncAccel_fcmp_32ns_32ns_1_2_1_U3 : component myFuncAccel_fcmp_32ns_32ns_1_2_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => temp_0_reg_201,
        din1 => threshold,
        ce => grp_fu_235_ce,
        opcode => ap_const_lv5_2,
        dout => grp_fu_235_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_0_reg_132_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state16) and ((icmp_ln47_fu_417_p2 = ap_const_lv1_1) or (icmp_ln46_reg_502 = ap_const_lv1_1)))) then 
                i_0_reg_132 <= i_reg_473;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_132 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    k_0_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
                k_0_reg_154 <= k_reg_497;
            elsif (((icmp_ln20_fu_259_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                k_0_reg_154 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    l_0_reg_190_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
                l_0_reg_190 <= l_reg_509;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                l_0_reg_190 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    l_1_reg_214_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln46_fu_302_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln26_fu_291_p2 = ap_const_lv1_1))) then 
                l_1_reg_214 <= ap_const_lv32_0;
            elsif ((not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (icmp_ln47_fu_417_p2 = ap_const_lv1_0) and (icmp_ln46_reg_502 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state16))) then 
                l_1_reg_214 <= l_2_fu_422_p2;
            end if; 
        end if;
    end process;

    phi_mul1_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state16) and ((icmp_ln47_fu_417_p2 = ap_const_lv1_1) or (icmp_ln46_reg_502 = ap_const_lv1_1)))) then 
                phi_mul1_reg_143 <= add_ln20_reg_465;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                phi_mul1_reg_143 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_178_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
                phi_mul_reg_178 <= add_ln26_reg_489;
            elsif (((icmp_ln20_fu_259_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                phi_mul_reg_178 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    r_0_reg_166_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
                r_0_reg_166 <= r_fu_411_p2;
            elsif (((icmp_ln20_fu_259_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                r_0_reg_166 <= ap_const_lv32_1;
            end if; 
        end if;
    end process;

    temp_0_reg_201_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
                temp_0_reg_201 <= grp_fu_225_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                temp_0_reg_201 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln20_reg_465 <= add_ln20_fu_254_p2;
                i_reg_473 <= i_fu_264_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln26_reg_489 <= add_ln26_fu_286_p2;
                k_reg_497 <= k_fu_296_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                data1_addr_read_reg_519 <= data1_datain;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln20_fu_259_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                data1_addr_reg_478 <= zext_ln37_fu_270_p1(32 - 1 downto 0);
                data2_addr_reg_484 <= zext_ln37_fu_270_p1(32 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln26_fu_291_p2 = ap_const_lv1_1))) then
                icmp_ln46_reg_502 <= icmp_ln46_fu_302_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                l_reg_509 <= l_fu_313_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                tmp_2_reg_537 <= grp_fu_230_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, data1_rsp_empty_n, data2_req_full_n, ap_CS_fsm_state2, icmp_ln20_fu_259_p2, ap_CS_fsm_state3, icmp_ln46_reg_502, icmp_ln26_fu_291_p2, ap_CS_fsm_state5, icmp_ln33_fu_308_p2, ap_CS_fsm_state16, icmp_ln47_fu_417_p2, ap_predicate_op121_write_state16)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln20_fu_259_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln26_fu_291_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state16;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if ((not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state15;
                elsif ((not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state16 => 
                if ((not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state16) and ((icmp_ln47_fu_417_p2 = ap_const_lv1_1) or (icmp_ln46_reg_502 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (icmp_ln47_fu_417_p2 = ap_const_lv1_0) and (icmp_ln46_reg_502 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state16))) then
                    ap_NS_fsm <= ap_ST_fsm_state16;
                else
                    ap_NS_fsm <= ap_ST_fsm_state16;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXX";
        end case;
    end process;
    add_ln20_fu_254_p2 <= std_logic_vector(unsigned(phi_mul1_reg_143) + unsigned(dim));
    add_ln26_fu_286_p2 <= std_logic_vector(unsigned(phi_mul_reg_178) + unsigned(dim));
    add_ln35_fu_319_p2 <= std_logic_vector(unsigned(l_0_reg_190) + unsigned(phi_mul_reg_178));
    and_ln43_1_fu_397_p2 <= (grp_fu_235_p2 and and_ln43_fu_391_p2);
    and_ln43_fu_391_p2 <= (or_ln43_fu_381_p2 and or_ln43_1_fu_387_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state16_assign_proc : process(data2_req_full_n, ap_predicate_op121_write_state16)
    begin
                ap_block_state16 <= ((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0));
    end process;


    ap_block_state5_assign_proc : process(data1_rsp_empty_n, data2_req_full_n, icmp_ln33_fu_308_p2)
    begin
                ap_block_state5 <= (((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln20_fu_259_p2)
    begin
        if (((icmp_ln20_fu_259_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op121_write_state16_assign_proc : process(icmp_ln46_reg_502, icmp_ln47_fu_417_p2)
    begin
                ap_predicate_op121_write_state16 <= ((icmp_ln47_fu_417_p2 = ap_const_lv1_0) and (icmp_ln46_reg_502 = ap_const_lv1_0));
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln20_fu_259_p2)
    begin
        if (((icmp_ln20_fu_259_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln43_1_fu_240_p1 <= threshold;
    bitcast_ln43_fu_351_p1 <= temp_0_reg_201;
    data0_address0 <= zext_ln35_fu_325_p1(4 - 1 downto 0);

    data0_ce0_assign_proc : process(data1_rsp_empty_n, data2_req_full_n, ap_CS_fsm_state5, icmp_ln33_fu_308_p2)
    begin
        if ((not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            data0_ce0 <= ap_const_logic_1;
        else 
            data0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data1_address <= data1_addr_reg_478;
    data1_dataout <= ap_const_lv32_0;
    data1_req_din <= ap_const_logic_0;

    data1_req_write_assign_proc : process(ap_CS_fsm_state3, icmp_ln26_fu_291_p2)
    begin
        if (((icmp_ln26_fu_291_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            data1_req_write <= ap_const_logic_1;
        else 
            data1_req_write <= ap_const_logic_0;
        end if; 
    end process;


    data1_rsp_read_assign_proc : process(data1_rsp_empty_n, data2_req_full_n, ap_CS_fsm_state5, icmp_ln33_fu_308_p2)
    begin
        if ((not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            data1_rsp_read <= ap_const_logic_1;
        else 
            data1_rsp_read <= ap_const_logic_0;
        end if; 
    end process;

    data1_size <= dim;
    data2_address <= data2_addr_reg_484;

    data2_dataout_assign_proc : process(data1_rsp_empty_n, data2_req_full_n, ap_CS_fsm_state5, icmp_ln33_fu_308_p2, ap_CS_fsm_state16, ap_predicate_op121_write_state16, temp_0_reg_201)
    begin
        if ((not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (ap_predicate_op121_write_state16 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state16))) then 
            data2_dataout <= ap_const_lv32_0;
        elsif ((not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1))) then 
            data2_dataout <= temp_0_reg_201;
        else 
            data2_dataout <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    data2_req_din_assign_proc : process(data1_rsp_empty_n, data2_req_full_n, icmp_ln46_reg_502, ap_CS_fsm_state5, icmp_ln33_fu_308_p2, ap_CS_fsm_state16, icmp_ln47_fu_417_p2, ap_predicate_op121_write_state16, icmp_ln49_fu_428_p2)
    begin
        if (((not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (ap_predicate_op121_write_state16 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state16)) or (not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (icmp_ln47_fu_417_p2 = ap_const_lv1_0) and (icmp_ln46_reg_502 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state16) and (icmp_ln49_fu_428_p2 = ap_const_lv1_1)) or (not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)))) then 
            data2_req_din <= ap_const_logic_1;
        else 
            data2_req_din <= ap_const_logic_0;
        end if; 
    end process;


    data2_req_write_assign_proc : process(data1_rsp_empty_n, data2_req_full_n, icmp_ln46_reg_502, ap_CS_fsm_state5, icmp_ln33_fu_308_p2, ap_CS_fsm_state16, icmp_ln47_fu_417_p2, ap_predicate_op121_write_state16, icmp_ln49_fu_428_p2)
    begin
        if (((not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (ap_predicate_op121_write_state16 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state16)) or (not(((ap_predicate_op121_write_state16 = ap_const_boolean_1) and (data2_req_full_n = ap_const_logic_0))) and (icmp_ln47_fu_417_p2 = ap_const_lv1_0) and (icmp_ln46_reg_502 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state16) and (icmp_ln49_fu_428_p2 = ap_const_lv1_1)) or (not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)))) then 
            data2_req_write <= ap_const_logic_1;
        else 
            data2_req_write <= ap_const_logic_0;
        end if; 
    end process;

    data2_rsp_read <= ap_const_logic_0;
    data2_size <= dim;

    grp_fu_235_ce_assign_proc : process(data1_rsp_empty_n, data2_req_full_n, ap_CS_fsm_state5, icmp_ln33_fu_308_p2, ap_CS_fsm_state15)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state15) or (not((((data2_req_full_n = ap_const_logic_0) and (icmp_ln33_fu_308_p2 = ap_const_lv1_1)) or ((icmp_ln33_fu_308_p2 = ap_const_lv1_0) and (data1_rsp_empty_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            grp_fu_235_ce <= ap_const_logic_1;
        else 
            grp_fu_235_ce <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_264_p2 <= std_logic_vector(unsigned(i_0_reg_132) + unsigned(ap_const_lv32_1));
    icmp_ln20_fu_259_p2 <= "1" when (i_0_reg_132 = size) else "0";
    icmp_ln26_fu_291_p2 <= "1" when (k_0_reg_154 = dim) else "0";
    icmp_ln33_fu_308_p2 <= "1" when (l_0_reg_190 = dim) else "0";
    icmp_ln37_fu_330_p2 <= "1" when (k_0_reg_154 = ap_const_lv32_0) else "0";
    icmp_ln43_1_fu_375_p2 <= "1" when (trunc_ln43_1_fu_365_p1 = ap_const_lv23_0) else "0";
    icmp_ln43_2_fu_345_p2 <= "0" when (tmp_6_fu_336_p4 = ap_const_lv8_FF) else "1";
    icmp_ln43_3_fu_248_p2 <= "1" when (trunc_ln43_fu_244_p1 = ap_const_lv23_0) else "0";
    icmp_ln43_fu_369_p2 <= "0" when (tmp_1_fu_355_p4 = ap_const_lv8_FF) else "1";
    icmp_ln46_fu_302_p2 <= "1" when (r_0_reg_166 = ap_const_lv32_0) else "0";
    icmp_ln47_fu_417_p2 <= "1" when (l_1_reg_214 = dim) else "0";
    icmp_ln49_fu_428_p2 <= "1" when (l_1_reg_214 = ap_const_lv32_0) else "0";
    k_fu_296_p2 <= std_logic_vector(unsigned(k_0_reg_154) + unsigned(ap_const_lv32_1));
    l_2_fu_422_p2 <= std_logic_vector(unsigned(l_1_reg_214) + unsigned(ap_const_lv32_1));
    l_fu_313_p2 <= std_logic_vector(unsigned(l_0_reg_190) + unsigned(ap_const_lv32_1));
    or_ln43_1_fu_387_p2 <= (icmp_ln43_3_fu_248_p2 or icmp_ln43_2_fu_345_p2);
    or_ln43_fu_381_p2 <= (icmp_ln43_fu_369_p2 or icmp_ln43_1_fu_375_p2);
    r_fu_411_p2 <= (select_ln43_fu_403_p3 and r_0_reg_166);
    select_ln43_fu_403_p3 <= 
        ap_const_lv32_FFFFFFFF when (and_ln43_1_fu_397_p2(0) = '1') else 
        ap_const_lv32_0;
    tmp_1_fu_355_p4 <= bitcast_ln43_fu_351_p1(30 downto 23);
    tmp_6_fu_336_p4 <= bitcast_ln43_1_fu_240_p1(30 downto 23);
    trunc_ln43_1_fu_365_p1 <= bitcast_ln43_fu_351_p1(23 - 1 downto 0);
    trunc_ln43_fu_244_p1 <= bitcast_ln43_1_fu_240_p1(23 - 1 downto 0);
    zext_ln35_fu_325_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln35_fu_319_p2),64));
    zext_ln37_fu_270_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(phi_mul1_reg_143),64));
end behav;
