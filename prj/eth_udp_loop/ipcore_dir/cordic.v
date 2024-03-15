////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: cordic.v
// /___/   /\     Timestamp: Wed Feb 21 18:36:03 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/download1/fpga/ISE/ISE_pro/eth_udp_pc_copy_04/prj/eth_udp_loop/ipcore_dir/tmp/_cg/cordic.ngc D:/download1/fpga/ISE/ISE_pro/eth_udp_pc_copy_04/prj/eth_udp_loop/ipcore_dir/tmp/_cg/cordic.v 
// Device	: 6slx16ftg256-2
// Input file	: D:/download1/fpga/ISE/ISE_pro/eth_udp_pc_copy_04/prj/eth_udp_loop/ipcore_dir/tmp/_cg/cordic.ngc
// Output file	: D:/download1/fpga/ISE/ISE_pro/eth_udp_pc_copy_04/prj/eth_udp_loop/ipcore_dir/tmp/_cg/cordic.v
// # of Modules	: 1
// Design Name	: cordic
// Xilinx        : D:\download1\fpga\ISE\ISE_app\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module cordic (
  aclk, s_axis_cartesian_tvalid, m_axis_dout_tvalid, s_axis_cartesian_tdata, m_axis_dout_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aclk;
  input s_axis_cartesian_tvalid;
  output m_axis_dout_tvalid;
  input [23 : 0] s_axis_cartesian_tdata;
  output [15 : 0] m_axis_dout_tdata;
  
  // synthesis translate_off
  
  wire \blk00000001/sig0000015b ;
  wire \blk00000001/sig0000015a ;
  wire \blk00000001/sig00000159 ;
  wire \blk00000001/sig00000158 ;
  wire \blk00000001/sig00000157 ;
  wire \blk00000001/sig00000156 ;
  wire \blk00000001/sig00000155 ;
  wire \blk00000001/sig00000154 ;
  wire \blk00000001/sig00000153 ;
  wire \blk00000001/sig00000152 ;
  wire \blk00000001/sig00000151 ;
  wire \blk00000001/sig00000150 ;
  wire \blk00000001/sig0000014f ;
  wire \blk00000001/sig0000014e ;
  wire \blk00000001/sig0000014d ;
  wire \blk00000001/sig0000014c ;
  wire \blk00000001/sig0000014b ;
  wire \blk00000001/sig0000014a ;
  wire \blk00000001/sig00000149 ;
  wire \blk00000001/sig00000148 ;
  wire \blk00000001/sig00000147 ;
  wire \blk00000001/sig00000146 ;
  wire \blk00000001/sig00000145 ;
  wire \blk00000001/sig00000144 ;
  wire \blk00000001/sig00000143 ;
  wire \blk00000001/sig00000142 ;
  wire \blk00000001/sig00000141 ;
  wire \blk00000001/sig00000140 ;
  wire \blk00000001/sig0000013f ;
  wire \blk00000001/sig0000013e ;
  wire \blk00000001/sig0000013d ;
  wire \blk00000001/sig0000013c ;
  wire \blk00000001/sig0000013b ;
  wire \blk00000001/sig0000013a ;
  wire \blk00000001/sig00000139 ;
  wire \blk00000001/sig00000138 ;
  wire \blk00000001/sig00000137 ;
  wire \blk00000001/sig00000136 ;
  wire \blk00000001/sig00000135 ;
  wire \blk00000001/sig00000134 ;
  wire \blk00000001/sig00000133 ;
  wire \blk00000001/sig00000132 ;
  wire \blk00000001/sig0000012f ;
  wire \blk00000001/sig0000012e ;
  wire \blk00000001/sig0000012d ;
  wire \blk00000001/sig0000012c ;
  wire \blk00000001/sig0000012b ;
  wire \blk00000001/sig0000012a ;
  wire \blk00000001/sig00000129 ;
  wire \blk00000001/sig00000128 ;
  wire \blk00000001/sig00000127 ;
  wire \blk00000001/sig00000126 ;
  wire \blk00000001/sig00000125 ;
  wire \blk00000001/sig00000124 ;
  wire \blk00000001/sig00000123 ;
  wire \blk00000001/sig00000122 ;
  wire \blk00000001/sig00000121 ;
  wire \blk00000001/sig00000120 ;
  wire \blk00000001/sig0000011f ;
  wire \blk00000001/sig0000011e ;
  wire \blk00000001/sig0000011d ;
  wire \blk00000001/sig0000011c ;
  wire \blk00000001/sig0000011b ;
  wire \blk00000001/sig0000011a ;
  wire \blk00000001/sig00000119 ;
  wire \blk00000001/sig00000118 ;
  wire \blk00000001/sig00000117 ;
  wire \blk00000001/sig00000116 ;
  wire \blk00000001/sig00000115 ;
  wire \blk00000001/sig00000114 ;
  wire \blk00000001/sig00000113 ;
  wire \blk00000001/sig00000112 ;
  wire \blk00000001/sig00000111 ;
  wire \blk00000001/sig00000110 ;
  wire \blk00000001/sig0000010f ;
  wire \blk00000001/sig0000010e ;
  wire \blk00000001/sig0000010d ;
  wire \blk00000001/sig0000010c ;
  wire \blk00000001/sig0000010b ;
  wire \blk00000001/sig0000010a ;
  wire \blk00000001/sig00000109 ;
  wire \blk00000001/sig00000108 ;
  wire \blk00000001/sig00000107 ;
  wire \blk00000001/sig00000106 ;
  wire \blk00000001/sig00000105 ;
  wire \blk00000001/sig00000104 ;
  wire \blk00000001/sig00000103 ;
  wire \blk00000001/sig00000102 ;
  wire \blk00000001/sig00000101 ;
  wire \blk00000001/sig00000100 ;
  wire \blk00000001/sig000000ff ;
  wire \blk00000001/sig000000fe ;
  wire \blk00000001/sig000000fd ;
  wire \blk00000001/sig000000fc ;
  wire \blk00000001/sig000000fb ;
  wire \blk00000001/sig000000fa ;
  wire \blk00000001/sig000000f9 ;
  wire \blk00000001/sig000000f8 ;
  wire \blk00000001/sig000000f7 ;
  wire \blk00000001/sig000000f6 ;
  wire \blk00000001/sig000000f5 ;
  wire \blk00000001/sig000000f4 ;
  wire \blk00000001/sig000000f3 ;
  wire \blk00000001/sig000000f2 ;
  wire \blk00000001/sig000000f1 ;
  wire \blk00000001/sig000000f0 ;
  wire \blk00000001/sig000000ef ;
  wire \blk00000001/sig000000ee ;
  wire \blk00000001/sig000000ed ;
  wire \blk00000001/sig000000ec ;
  wire \blk00000001/sig000000eb ;
  wire \blk00000001/sig000000ea ;
  wire \blk00000001/sig000000e9 ;
  wire \blk00000001/sig000000e8 ;
  wire \blk00000001/sig000000e7 ;
  wire \blk00000001/sig000000e6 ;
  wire \blk00000001/sig000000e5 ;
  wire \blk00000001/sig000000e4 ;
  wire \blk00000001/sig000000e3 ;
  wire \blk00000001/sig000000e2 ;
  wire \blk00000001/sig000000e1 ;
  wire \blk00000001/sig000000e0 ;
  wire \blk00000001/sig000000df ;
  wire \blk00000001/sig000000de ;
  wire \blk00000001/sig000000dd ;
  wire \blk00000001/sig000000dc ;
  wire \blk00000001/sig000000db ;
  wire \blk00000001/sig000000da ;
  wire \blk00000001/sig000000d9 ;
  wire \blk00000001/sig000000d8 ;
  wire \blk00000001/sig000000d7 ;
  wire \blk00000001/sig000000d6 ;
  wire \blk00000001/sig000000d5 ;
  wire \blk00000001/sig000000d4 ;
  wire \blk00000001/sig000000d3 ;
  wire \blk00000001/sig000000d2 ;
  wire \blk00000001/sig000000d1 ;
  wire \blk00000001/sig000000d0 ;
  wire \blk00000001/sig000000cf ;
  wire \blk00000001/sig000000ce ;
  wire \blk00000001/sig000000cd ;
  wire \blk00000001/sig000000cc ;
  wire \blk00000001/sig000000cb ;
  wire \blk00000001/sig000000ca ;
  wire \blk00000001/sig000000c9 ;
  wire \blk00000001/sig000000c8 ;
  wire \blk00000001/sig000000c7 ;
  wire \blk00000001/sig000000c6 ;
  wire \blk00000001/sig000000c5 ;
  wire \blk00000001/sig000000c4 ;
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
  wire \blk00000001/sig000000c0 ;
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
  wire \blk00000001/sig000000aa ;
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000024 ;
  wire \blk00000001/sig00000023 ;
  wire \blk00000001/sig00000022 ;
  wire \blk00000001/sig00000021 ;
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire \blk00000001/sig0000001a ;
  wire \blk00000001/sig00000019 ;
  wire \blk00000001/sig00000018 ;
  wire \blk00000001/sig00000017 ;
  wire \blk00000001/sig00000016 ;
  wire \blk00000001/sig00000015 ;
  wire \blk00000001/sig00000014 ;
  wire \blk00000001/sig00000013 ;
  wire \blk00000001/sig00000012 ;
  wire \blk00000001/sig00000011 ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000f ;
  wire \blk00000001/blk0000000b/sig0000018b ;
  wire \blk00000001/blk0000000b/sig0000018a ;
  wire \blk00000001/blk0000000b/sig00000189 ;
  wire \blk00000001/blk0000000b/sig00000188 ;
  wire \blk00000001/blk0000000b/sig00000187 ;
  wire \blk00000001/blk0000000b/sig00000186 ;
  wire \blk00000001/blk0000000b/sig00000185 ;
  wire \blk00000001/blk0000000b/sig00000184 ;
  wire \blk00000001/blk0000000b/sig00000183 ;
  wire \blk00000001/blk0000000b/sig00000182 ;
  wire \blk00000001/blk0000000b/sig00000181 ;
  wire \blk00000001/blk0000000b/sig00000180 ;
  wire \blk00000001/blk0000000b/sig0000017f ;
  wire \blk00000001/blk0000000b/sig0000017e ;
  wire \blk00000001/blk0000000b/sig0000017d ;
  wire \blk00000001/blk0000000b/sig0000017c ;
  wire \blk00000001/blk0000000b/sig0000017b ;
  wire \blk00000001/blk0000000b/sig0000017a ;
  wire \blk00000001/blk0000000b/sig00000179 ;
  wire \blk00000001/blk0000000b/sig00000178 ;
  wire \blk00000001/blk0000000b/sig00000177 ;
  wire \blk00000001/blk0000000b/sig0000016e ;
  wire \blk00000001/blk0000000b/sig0000016c ;
  wire \blk00000001/blk0000003b/sig000001c0 ;
  wire \blk00000001/blk0000003b/sig000001bf ;
  wire \blk00000001/blk0000003b/sig000001be ;
  wire \blk00000001/blk0000003b/sig000001bd ;
  wire \blk00000001/blk0000003b/sig000001bc ;
  wire \blk00000001/blk0000003b/sig000001bb ;
  wire \blk00000001/blk0000003b/sig000001ba ;
  wire \blk00000001/blk0000003b/sig000001b9 ;
  wire \blk00000001/blk0000003b/sig000001b8 ;
  wire \blk00000001/blk0000003b/sig000001b7 ;
  wire \blk00000001/blk0000003b/sig000001b6 ;
  wire \blk00000001/blk0000003b/sig000001b5 ;
  wire \blk00000001/blk0000003b/sig000001b4 ;
  wire \blk00000001/blk0000003b/sig000001b3 ;
  wire \blk00000001/blk0000003b/sig000001b2 ;
  wire \blk00000001/blk0000003b/sig000001b1 ;
  wire \blk00000001/blk0000003b/sig000001b0 ;
  wire \blk00000001/blk0000003b/sig000001af ;
  wire \blk00000001/blk0000003b/sig000001ae ;
  wire \blk00000001/blk0000003b/sig000001ad ;
  wire \blk00000001/blk0000003b/sig000001ac ;
  wire \blk00000001/blk0000003b/sig000001ab ;
  wire \blk00000001/blk0000003b/sig000001aa ;
  wire \blk00000001/blk0000003b/sig000001a0 ;
  wire \blk00000001/blk0000003b/sig0000019e ;
  wire \blk00000001/blk0000005f/sig000001eb ;
  wire \blk00000001/blk0000005f/sig000001ea ;
  wire \blk00000001/blk0000005f/sig000001e9 ;
  wire \blk00000001/blk0000005f/sig000001e8 ;
  wire \blk00000001/blk0000005f/sig000001e7 ;
  wire \blk00000001/blk0000005f/sig000001e6 ;
  wire \blk00000001/blk0000005f/sig000001e5 ;
  wire \blk00000001/blk0000005f/sig000001e4 ;
  wire \blk00000001/blk0000005f/sig000001e3 ;
  wire \blk00000001/blk0000005f/sig000001e2 ;
  wire \blk00000001/blk0000005f/sig000001e1 ;
  wire \blk00000001/blk0000005f/sig000001e0 ;
  wire \blk00000001/blk0000005f/sig000001df ;
  wire \blk00000001/blk0000005f/sig000001de ;
  wire \blk00000001/blk0000005f/sig000001dd ;
  wire \blk00000001/blk0000005f/sig000001dc ;
  wire \blk00000001/blk0000005f/sig000001db ;
  wire \blk00000001/blk0000005f/sig000001da ;
  wire \blk00000001/blk0000005f/sig000001d9 ;
  wire \blk00000001/blk0000005f/sig000001d1 ;
  wire \blk00000001/blk0000005f/sig000001cf ;
  wire \blk00000001/blk0000007d/sig00000225 ;
  wire \blk00000001/blk0000007d/sig00000224 ;
  wire \blk00000001/blk0000007d/sig00000223 ;
  wire \blk00000001/blk0000007d/sig00000222 ;
  wire \blk00000001/blk0000007d/sig00000221 ;
  wire \blk00000001/blk0000007d/sig00000220 ;
  wire \blk00000001/blk0000007d/sig0000021f ;
  wire \blk00000001/blk0000007d/sig0000021e ;
  wire \blk00000001/blk0000007d/sig0000021d ;
  wire \blk00000001/blk0000007d/sig0000021c ;
  wire \blk00000001/blk0000007d/sig0000021b ;
  wire \blk00000001/blk0000007d/sig0000021a ;
  wire \blk00000001/blk0000007d/sig00000219 ;
  wire \blk00000001/blk0000007d/sig00000218 ;
  wire \blk00000001/blk0000007d/sig00000217 ;
  wire \blk00000001/blk0000007d/sig00000216 ;
  wire \blk00000001/blk0000007d/sig00000215 ;
  wire \blk00000001/blk0000007d/sig00000214 ;
  wire \blk00000001/blk0000007d/sig00000213 ;
  wire \blk00000001/blk0000007d/sig00000212 ;
  wire \blk00000001/blk0000007d/sig00000211 ;
  wire \blk00000001/blk0000007d/sig00000210 ;
  wire \blk00000001/blk0000007d/sig0000020f ;
  wire \blk00000001/blk0000007d/sig0000020e ;
  wire \blk00000001/blk0000007d/sig0000020d ;
  wire \blk00000001/blk0000007d/sig00000202 ;
  wire \blk00000001/blk0000007d/sig00000200 ;
  wire \blk00000001/blk000000b9/sig0000024b ;
  wire \blk00000001/blk000000b9/sig0000024a ;
  wire \blk00000001/blk000000b9/sig00000249 ;
  wire \blk00000001/blk000000b9/sig00000248 ;
  wire \blk00000001/blk000000b9/sig00000247 ;
  wire \blk00000001/blk000000b9/sig00000246 ;
  wire \blk00000001/blk000000b9/sig00000245 ;
  wire \blk00000001/blk000000b9/sig00000244 ;
  wire \blk00000001/blk000000b9/sig00000243 ;
  wire \blk00000001/blk000000b9/sig00000242 ;
  wire \blk00000001/blk000000b9/sig00000241 ;
  wire \blk00000001/blk000000b9/sig00000240 ;
  wire \blk00000001/blk000000b9/sig0000023f ;
  wire \blk00000001/blk000000b9/sig0000023e ;
  wire \blk00000001/blk000000b9/sig0000023d ;
  wire \blk00000001/blk000000b9/sig0000023c ;
  wire \blk00000001/blk000000b9/sig0000023b ;
  wire \blk00000001/blk000000b9/sig00000234 ;
  wire \blk00000001/blk000000b9/sig00000232 ;
  wire \blk00000001/blk000000df/sig0000028a ;
  wire \blk00000001/blk000000df/sig00000289 ;
  wire \blk00000001/blk000000df/sig00000288 ;
  wire \blk00000001/blk000000df/sig00000287 ;
  wire \blk00000001/blk000000df/sig00000286 ;
  wire \blk00000001/blk000000df/sig00000285 ;
  wire \blk00000001/blk000000df/sig00000284 ;
  wire \blk00000001/blk000000df/sig00000283 ;
  wire \blk00000001/blk000000df/sig00000282 ;
  wire \blk00000001/blk000000df/sig00000281 ;
  wire \blk00000001/blk000000df/sig00000280 ;
  wire \blk00000001/blk000000df/sig0000027f ;
  wire \blk00000001/blk000000df/sig0000027e ;
  wire \blk00000001/blk000000df/sig0000027d ;
  wire \blk00000001/blk000000df/sig0000027c ;
  wire \blk00000001/blk000000df/sig0000027b ;
  wire \blk00000001/blk000000df/sig0000027a ;
  wire \blk00000001/blk000000df/sig00000279 ;
  wire \blk00000001/blk000000df/sig00000278 ;
  wire \blk00000001/blk000000df/sig00000277 ;
  wire \blk00000001/blk000000df/sig00000276 ;
  wire \blk00000001/blk000000df/sig00000275 ;
  wire \blk00000001/blk000000df/sig00000274 ;
  wire \blk00000001/blk000000df/sig00000273 ;
  wire \blk00000001/blk000000df/sig00000272 ;
  wire \blk00000001/blk000000df/sig00000271 ;
  wire \blk00000001/blk000000df/sig00000270 ;
  wire \blk00000001/blk000000df/sig00000264 ;
  wire \blk00000001/blk000000df/sig00000262 ;
  wire \blk00000001/blk0000010b/sig000002ab ;
  wire \blk00000001/blk0000010b/sig000002aa ;
  wire \blk00000001/blk0000010b/sig000002a9 ;
  wire \blk00000001/blk0000010b/sig000002a8 ;
  wire \blk00000001/blk0000010b/sig000002a7 ;
  wire \blk00000001/blk0000010b/sig000002a6 ;
  wire \blk00000001/blk0000010b/sig000002a5 ;
  wire \blk00000001/blk0000010b/sig000002a4 ;
  wire \blk00000001/blk0000010b/sig000002a3 ;
  wire \blk00000001/blk0000010b/sig000002a2 ;
  wire \blk00000001/blk0000010b/sig000002a1 ;
  wire \blk00000001/blk0000010b/sig000002a0 ;
  wire \blk00000001/blk0000010b/sig0000029f ;
  wire \blk00000001/blk0000010b/sig0000029e ;
  wire \blk00000001/blk0000010b/sig0000029d ;
  wire \blk00000001/blk0000010b/sig00000297 ;
  wire \blk00000001/blk0000010b/sig00000295 ;
  wire \blk00000001/blk00000123/sig000002ef ;
  wire \blk00000001/blk00000123/sig000002ee ;
  wire \blk00000001/blk00000123/sig000002ed ;
  wire \blk00000001/blk00000123/sig000002ec ;
  wire \blk00000001/blk00000123/sig000002eb ;
  wire \blk00000001/blk00000123/sig000002ea ;
  wire \blk00000001/blk00000123/sig000002e9 ;
  wire \blk00000001/blk00000123/sig000002e8 ;
  wire \blk00000001/blk00000123/sig000002e7 ;
  wire \blk00000001/blk00000123/sig000002e6 ;
  wire \blk00000001/blk00000123/sig000002e5 ;
  wire \blk00000001/blk00000123/sig000002e4 ;
  wire \blk00000001/blk00000123/sig000002e3 ;
  wire \blk00000001/blk00000123/sig000002e2 ;
  wire \blk00000001/blk00000123/sig000002e1 ;
  wire \blk00000001/blk00000123/sig000002e0 ;
  wire \blk00000001/blk00000123/sig000002df ;
  wire \blk00000001/blk00000123/sig000002de ;
  wire \blk00000001/blk00000123/sig000002dd ;
  wire \blk00000001/blk00000123/sig000002dc ;
  wire \blk00000001/blk00000123/sig000002db ;
  wire \blk00000001/blk00000123/sig000002da ;
  wire \blk00000001/blk00000123/sig000002d9 ;
  wire \blk00000001/blk00000123/sig000002d8 ;
  wire \blk00000001/blk00000123/sig000002d7 ;
  wire \blk00000001/blk00000123/sig000002d6 ;
  wire \blk00000001/blk00000123/sig000002d5 ;
  wire \blk00000001/blk00000123/sig000002d4 ;
  wire \blk00000001/blk00000123/sig000002d3 ;
  wire \blk00000001/blk00000123/sig000002c6 ;
  wire \blk00000001/blk00000123/sig000002c4 ;
  wire \blk00000001/blk00000167/sig0000030a ;
  wire \blk00000001/blk00000167/sig00000309 ;
  wire \blk00000001/blk00000167/sig00000308 ;
  wire \blk00000001/blk00000167/sig00000307 ;
  wire \blk00000001/blk00000167/sig00000306 ;
  wire \blk00000001/blk00000167/sig00000305 ;
  wire \blk00000001/blk00000167/sig00000304 ;
  wire \blk00000001/blk00000167/sig00000303 ;
  wire \blk00000001/blk00000167/sig00000302 ;
  wire \blk00000001/blk00000167/sig00000301 ;
  wire \blk00000001/blk00000167/sig00000300 ;
  wire \blk00000001/blk00000167/sig000002ff ;
  wire \blk00000001/blk00000167/sig000002fa ;
  wire \blk00000001/blk00000167/sig000002f8 ;
  wire \blk00000001/blk00000182/sig00000351 ;
  wire \blk00000001/blk00000182/sig00000350 ;
  wire \blk00000001/blk00000182/sig0000034f ;
  wire \blk00000001/blk00000182/sig0000034e ;
  wire \blk00000001/blk00000182/sig0000034d ;
  wire \blk00000001/blk00000182/sig0000034c ;
  wire \blk00000001/blk00000182/sig0000034b ;
  wire \blk00000001/blk00000182/sig0000034a ;
  wire \blk00000001/blk00000182/sig00000349 ;
  wire \blk00000001/blk00000182/sig00000348 ;
  wire \blk00000001/blk00000182/sig00000347 ;
  wire \blk00000001/blk00000182/sig00000346 ;
  wire \blk00000001/blk00000182/sig00000345 ;
  wire \blk00000001/blk00000182/sig00000344 ;
  wire \blk00000001/blk00000182/sig00000343 ;
  wire \blk00000001/blk00000182/sig00000342 ;
  wire \blk00000001/blk00000182/sig00000341 ;
  wire \blk00000001/blk00000182/sig00000340 ;
  wire \blk00000001/blk00000182/sig0000033f ;
  wire \blk00000001/blk00000182/sig0000033e ;
  wire \blk00000001/blk00000182/sig0000033d ;
  wire \blk00000001/blk00000182/sig0000033c ;
  wire \blk00000001/blk00000182/sig0000033b ;
  wire \blk00000001/blk00000182/sig0000033a ;
  wire \blk00000001/blk00000182/sig00000339 ;
  wire \blk00000001/blk00000182/sig00000338 ;
  wire \blk00000001/blk00000182/sig00000337 ;
  wire \blk00000001/blk00000182/sig00000336 ;
  wire \blk00000001/blk00000182/sig00000335 ;
  wire \blk00000001/blk00000182/sig00000327 ;
  wire \blk00000001/blk00000182/sig00000325 ;
  wire \blk00000001/blk000001b0/sig0000039d ;
  wire \blk00000001/blk000001b0/sig0000039c ;
  wire \blk00000001/blk000001b0/sig0000039b ;
  wire \blk00000001/blk000001b0/sig0000039a ;
  wire \blk00000001/blk000001b0/sig00000399 ;
  wire \blk00000001/blk000001b0/sig00000398 ;
  wire \blk00000001/blk000001b0/sig00000397 ;
  wire \blk00000001/blk000001b0/sig00000396 ;
  wire \blk00000001/blk000001b0/sig00000395 ;
  wire \blk00000001/blk000001b0/sig00000394 ;
  wire \blk00000001/blk000001b0/sig00000393 ;
  wire \blk00000001/blk000001b0/sig00000392 ;
  wire \blk00000001/blk000001b0/sig00000391 ;
  wire \blk00000001/blk000001b0/sig00000390 ;
  wire \blk00000001/blk000001b0/sig0000038f ;
  wire \blk00000001/blk000001b0/sig0000038e ;
  wire \blk00000001/blk000001b0/sig0000038d ;
  wire \blk00000001/blk000001b0/sig0000038c ;
  wire \blk00000001/blk000001b0/sig0000038b ;
  wire \blk00000001/blk000001b0/sig0000038a ;
  wire \blk00000001/blk000001b0/sig00000389 ;
  wire \blk00000001/blk000001b0/sig00000388 ;
  wire \blk00000001/blk000001b0/sig00000387 ;
  wire \blk00000001/blk000001b0/sig00000386 ;
  wire \blk00000001/blk000001b0/sig00000385 ;
  wire \blk00000001/blk000001b0/sig00000384 ;
  wire \blk00000001/blk000001b0/sig00000383 ;
  wire \blk00000001/blk000001b0/sig00000382 ;
  wire \blk00000001/blk000001b0/sig00000381 ;
  wire \blk00000001/blk000001b0/sig00000380 ;
  wire \blk00000001/blk000001b0/sig0000037f ;
  wire \blk00000001/blk000001b0/sig0000037e ;
  wire \blk00000001/blk000001b0/sig0000037d ;
  wire \blk00000001/blk000001b0/sig0000037c ;
  wire \blk00000001/blk000001b0/sig0000037b ;
  wire \blk00000001/blk000001b0/sig0000037a ;
  wire \blk00000001/blk000001b0/sig00000379 ;
  wire \blk00000001/blk000001b0/sig00000378 ;
  wire \blk00000001/blk000001b0/sig00000377 ;
  wire \blk00000001/blk000001b0/sig00000376 ;
  wire \blk00000001/blk000001b0/sig00000375 ;
  wire \blk00000001/blk000001b0/sig00000374 ;
  wire \blk00000001/blk000001b0/sig00000373 ;
  wire \blk00000001/blk000001b0/sig00000372 ;
  wire \blk00000001/blk000001b0/sig00000371 ;
  wire \blk00000001/blk000001b0/sig00000370 ;
  wire \blk00000001/blk000001b0/sig0000036e ;
  wire \blk00000001/blk000001ee/sig000003e0 ;
  wire \blk00000001/blk000001ee/sig000003df ;
  wire \blk00000001/blk000001ee/sig000003de ;
  wire \blk00000001/blk000001ee/sig000003dd ;
  wire \blk00000001/blk000001ee/sig000003dc ;
  wire \blk00000001/blk000001ee/sig000003db ;
  wire \blk00000001/blk000001ee/sig000003da ;
  wire \blk00000001/blk000001ee/sig000003d9 ;
  wire \blk00000001/blk000001ee/sig000003d8 ;
  wire \blk00000001/blk000001ee/sig000003d7 ;
  wire \blk00000001/blk000001ee/sig000003d6 ;
  wire \blk00000001/blk000001ee/sig000003d5 ;
  wire \blk00000001/blk000001ee/sig000003d4 ;
  wire \blk00000001/blk000001ee/sig000003d3 ;
  wire \blk00000001/blk000001ee/sig000003d2 ;
  wire \blk00000001/blk000001ee/sig000003d1 ;
  wire \blk00000001/blk000001ee/sig000003d0 ;
  wire \blk00000001/blk000001ee/sig000003cf ;
  wire \blk00000001/blk000001ee/sig000003ce ;
  wire \blk00000001/blk000001ee/sig000003cd ;
  wire \blk00000001/blk000001ee/sig000003cc ;
  wire \blk00000001/blk000001ee/sig000003cb ;
  wire \blk00000001/blk000001ee/sig000003ca ;
  wire \blk00000001/blk000001ee/sig000003c9 ;
  wire \blk00000001/blk000001ee/sig000003c8 ;
  wire \blk00000001/blk000001ee/sig000003c7 ;
  wire \blk00000001/blk000001ee/sig000003c6 ;
  wire \blk00000001/blk000001ee/sig000003c5 ;
  wire \blk00000001/blk000001ee/sig000003c4 ;
  wire \blk00000001/blk000001ee/sig000003c3 ;
  wire \blk00000001/blk000001ee/sig000003c2 ;
  wire \blk00000001/blk000001ee/sig000003c1 ;
  wire \blk00000001/blk000001ee/sig000003c0 ;
  wire \blk00000001/blk000001ee/sig000003bf ;
  wire \blk00000001/blk000001ee/sig000003be ;
  wire \blk00000001/blk000001ee/sig000003bd ;
  wire \blk00000001/blk000001ee/sig000003bc ;
  wire \blk00000001/blk000001ee/sig000003bb ;
  wire \blk00000001/blk000001ee/sig000003ba ;
  wire \blk00000001/blk000001ee/sig000003b9 ;
  wire \NLW_blk00000001/blk00000297_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000295_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000293_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000291_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000028f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000028d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000028b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000289_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000287_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000285_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000283_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000281_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000027f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk000001ee/blk0000020a_O_UNCONNECTED ;
  wire \NLW_blk00000001/blk000001ee/blk000001fd_O_UNCONNECTED ;
  wire \NLW_blk00000001/blk000001ee/blk000001f1_O_UNCONNECTED ;
  wire [10 : 10] NlwRenamedSignal_m_axis_dout_tdata;
  assign
    m_axis_dout_tdata[15] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[14] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[13] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[12] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[11] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[10] = NlwRenamedSignal_m_axis_dout_tdata[10];
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000298  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig0000015b ),
    .Q(\blk00000001/sig00000125 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000297  (
    .A0(\blk00000001/sig0000013f ),
    .A1(\blk00000001/sig0000000f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[0]),
    .Q(\blk00000001/sig0000015b ),
    .Q15(\NLW_blk00000001/blk00000297_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000296  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig0000015a ),
    .Q(\blk00000001/sig000000fd )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000295  (
    .A0(\blk00000001/sig0000013f ),
    .A1(\blk00000001/sig0000000f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[2]),
    .Q(\blk00000001/sig0000015a ),
    .Q15(\NLW_blk00000001/blk00000295_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000294  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000159 ),
    .Q(\blk00000001/sig00000126 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000293  (
    .A0(\blk00000001/sig0000013f ),
    .A1(\blk00000001/sig0000000f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[1]),
    .Q(\blk00000001/sig00000159 ),
    .Q15(\NLW_blk00000001/blk00000293_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000292  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000158 ),
    .Q(\blk00000001/sig000000d6 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000291  (
    .A0(\blk00000001/sig0000000f ),
    .A1(\blk00000001/sig0000013f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[5]),
    .Q(\blk00000001/sig00000158 ),
    .Q15(\NLW_blk00000001/blk00000291_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000290  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000157 ),
    .Q(\blk00000001/sig000000d5 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000028f  (
    .A0(\blk00000001/sig0000000f ),
    .A1(\blk00000001/sig0000013f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[4]),
    .Q(\blk00000001/sig00000157 ),
    .Q15(\NLW_blk00000001/blk0000028f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000028e  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000156 ),
    .Q(\blk00000001/sig000000fe )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000028d  (
    .A0(\blk00000001/sig0000013f ),
    .A1(\blk00000001/sig0000000f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[3]),
    .Q(\blk00000001/sig00000156 ),
    .Q15(\NLW_blk00000001/blk0000028d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000028c  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000155 ),
    .Q(\blk00000001/sig000000be )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000028b  (
    .A0(\blk00000001/sig0000013f ),
    .A1(\blk00000001/sig0000013f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[10]),
    .Q(\blk00000001/sig00000155 ),
    .Q15(\NLW_blk00000001/blk0000028b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000028a  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000154 ),
    .Q(\blk00000001/sig000000ad )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000289  (
    .A0(\blk00000001/sig0000000f ),
    .A1(\blk00000001/sig0000013f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[6]),
    .Q(\blk00000001/sig00000154 ),
    .Q15(\NLW_blk00000001/blk00000289_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000288  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000153 ),
    .Q(\blk00000001/sig000000bf )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000287  (
    .A0(\blk00000001/sig0000013f ),
    .A1(\blk00000001/sig0000013f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[11]),
    .Q(\blk00000001/sig00000153 ),
    .Q15(\NLW_blk00000001/blk00000287_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000286  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000152 ),
    .Q(\blk00000001/sig000000ae )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000285  (
    .A0(\blk00000001/sig0000000f ),
    .A1(\blk00000001/sig0000013f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[7]),
    .Q(\blk00000001/sig00000152 ),
    .Q15(\NLW_blk00000001/blk00000285_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000284  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000151 ),
    .Q(\blk00000001/sig00000098 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000283  (
    .A0(\blk00000001/sig0000013f ),
    .A1(\blk00000001/sig0000013f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[8]),
    .Q(\blk00000001/sig00000151 ),
    .Q15(\NLW_blk00000001/blk00000283_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000282  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig00000150 ),
    .Q(\blk00000001/sig00000099 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000281  (
    .A0(\blk00000001/sig0000013f ),
    .A1(\blk00000001/sig0000013f ),
    .A2(\blk00000001/sig0000013f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[9]),
    .Q(\blk00000001/sig00000150 ),
    .Q15(\NLW_blk00000001/blk00000281_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000280  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(\blk00000001/sig0000014f ),
    .Q(m_axis_dout_tvalid)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000027f  (
    .A0(\blk00000001/sig0000013f ),
    .A1(\blk00000001/sig0000013f ),
    .A2(\blk00000001/sig0000000f ),
    .A3(\blk00000001/sig0000013f ),
    .CE(\blk00000001/sig0000000f ),
    .CLK(aclk),
    .D(\blk00000001/sig00000010 ),
    .Q(\blk00000001/sig0000014f ),
    .Q15(\NLW_blk00000001/blk0000027f_Q15_UNCONNECTED )
  );
  INV   \blk00000001/blk0000027e  (
    .I(s_axis_cartesian_tdata[20]),
    .O(\blk00000001/sig00000015 )
  );
  INV   \blk00000001/blk0000027d  (
    .I(\blk00000001/sig00000022 ),
    .O(\blk00000001/sig00000013 )
  );
  LUT5 #(
    .INIT ( 32'hDDD58880 ))
  \blk00000001/blk0000027c  (
    .I0(\blk00000001/sig0000012f ),
    .I1(s_axis_cartesian_tdata[19]),
    .I2(s_axis_cartesian_tdata[18]),
    .I3(s_axis_cartesian_tdata[20]),
    .I4(\blk00000001/sig0000012e ),
    .O(\blk00000001/sig0000012a )
  );
  LUT5 #(
    .INIT ( 32'hD7D58280 ))
  \blk00000001/blk0000027b  (
    .I0(\blk00000001/sig0000012f ),
    .I1(s_axis_cartesian_tdata[18]),
    .I2(s_axis_cartesian_tdata[20]),
    .I3(s_axis_cartesian_tdata[19]),
    .I4(\blk00000001/sig0000012d ),
    .O(\blk00000001/sig00000129 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000027a  (
    .I0(\blk00000001/sig00000027 ),
    .I1(\blk00000001/sig00000107 ),
    .I2(\blk00000001/sig00000109 ),
    .I3(\blk00000001/sig000000e2 ),
    .I4(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig000000dc )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000279  (
    .I0(\blk00000001/sig00000026 ),
    .I1(\blk00000001/sig00000106 ),
    .I2(\blk00000001/sig00000109 ),
    .I3(\blk00000001/sig000000e1 ),
    .I4(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig000000db )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000278  (
    .I0(\blk00000001/sig0000010b ),
    .I1(\blk00000001/sig00000105 ),
    .I2(\blk00000001/sig00000109 ),
    .I3(\blk00000001/sig000000e0 ),
    .I4(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig000000da )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000277  (
    .I0(\blk00000001/sig0000010a ),
    .I1(\blk00000001/sig00000104 ),
    .I2(\blk00000001/sig00000109 ),
    .I3(\blk00000001/sig000000df ),
    .I4(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig000000d9 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000276  (
    .I0(\blk00000001/sig00000052 ),
    .I1(\blk00000001/sig000000bb ),
    .I2(\blk00000001/sig000000bd ),
    .I3(\blk00000001/sig00000096 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008e )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000275  (
    .I0(\blk00000001/sig00000051 ),
    .I1(\blk00000001/sig000000ba ),
    .I2(\blk00000001/sig000000bd ),
    .I3(\blk00000001/sig00000095 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008d )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000274  (
    .I0(\blk00000001/sig00000050 ),
    .I1(\blk00000001/sig000000b9 ),
    .I2(\blk00000001/sig000000bd ),
    .I3(\blk00000001/sig00000094 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008c )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000273  (
    .I0(\blk00000001/sig0000004f ),
    .I1(\blk00000001/sig000000b8 ),
    .I2(\blk00000001/sig000000bd ),
    .I3(\blk00000001/sig00000093 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008b )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000272  (
    .I0(\blk00000001/sig000000bf ),
    .I1(\blk00000001/sig000000b7 ),
    .I2(\blk00000001/sig000000bd ),
    .I3(\blk00000001/sig00000092 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008a )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000271  (
    .I0(\blk00000001/sig000000be ),
    .I1(\blk00000001/sig000000b6 ),
    .I2(\blk00000001/sig000000bd ),
    .I3(\blk00000001/sig00000091 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000089 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000270  (
    .I0(\blk00000001/sig0000006b ),
    .I1(\blk00000001/sig000000aa ),
    .I2(\blk00000001/sig000000ac ),
    .I3(\blk00000001/sig000000d3 ),
    .I4(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c9 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000026f  (
    .I0(\blk00000001/sig0000006a ),
    .I1(\blk00000001/sig000000a9 ),
    .I2(\blk00000001/sig000000ac ),
    .I3(\blk00000001/sig000000d2 ),
    .I4(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c8 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000026e  (
    .I0(\blk00000001/sig00000069 ),
    .I1(\blk00000001/sig000000a8 ),
    .I2(\blk00000001/sig000000ac ),
    .I3(\blk00000001/sig000000d1 ),
    .I4(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c7 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000026d  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig000000a7 ),
    .I2(\blk00000001/sig000000ac ),
    .I3(\blk00000001/sig000000d0 ),
    .I4(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c6 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000026c  (
    .I0(\blk00000001/sig00000067 ),
    .I1(\blk00000001/sig000000a6 ),
    .I2(\blk00000001/sig000000ac ),
    .I3(\blk00000001/sig000000cf ),
    .I4(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c5 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000026b  (
    .I0(\blk00000001/sig00000066 ),
    .I1(\blk00000001/sig000000a5 ),
    .I2(\blk00000001/sig000000ac ),
    .I3(\blk00000001/sig000000ce ),
    .I4(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c4 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000026a  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000a4 ),
    .I2(\blk00000001/sig000000ac ),
    .I3(\blk00000001/sig000000cd ),
    .I4(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c3 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000269  (
    .I0(\blk00000001/sig000000ad ),
    .I1(\blk00000001/sig000000a3 ),
    .I2(\blk00000001/sig000000ac ),
    .I3(\blk00000001/sig000000cc ),
    .I4(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c2 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000268  (
    .I0(\blk00000001/sig0000005a ),
    .I1(\blk00000001/sig000000f8 ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig00000121 ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig00000115 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000267  (
    .I0(\blk00000001/sig00000059 ),
    .I1(\blk00000001/sig000000f7 ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig00000120 ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig00000114 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000266  (
    .I0(\blk00000001/sig00000058 ),
    .I1(\blk00000001/sig000000f6 ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig0000011f ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig00000113 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000265  (
    .I0(\blk00000001/sig00000057 ),
    .I1(\blk00000001/sig000000f5 ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig0000011e ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig00000112 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000264  (
    .I0(\blk00000001/sig00000056 ),
    .I1(\blk00000001/sig000000f4 ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig0000011d ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig00000111 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000263  (
    .I0(\blk00000001/sig00000055 ),
    .I1(\blk00000001/sig000000f3 ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig0000011c ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig00000110 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000262  (
    .I0(\blk00000001/sig000000fe ),
    .I1(\blk00000001/sig000000f2 ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig0000011b ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig0000010f )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000261  (
    .I0(\blk00000001/sig000000fd ),
    .I1(\blk00000001/sig000000f1 ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig0000011a ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig0000010e )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000260  (
    .I0(\blk00000001/sig0000005c ),
    .I1(\blk00000001/sig000000fa ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig00000123 ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig00000117 )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000025f  (
    .I0(\blk00000001/sig0000005b ),
    .I1(\blk00000001/sig000000f9 ),
    .I2(\blk00000001/sig000000fc ),
    .I3(\blk00000001/sig00000122 ),
    .I4(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig00000116 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000025e  (
    .I0(\blk00000001/sig0000014d ),
    .I1(\blk00000001/sig00000149 ),
    .I2(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig0000013b )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000025d  (
    .I0(\blk00000001/sig0000003b ),
    .I1(\blk00000001/sig00000148 ),
    .I2(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig0000013a )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000025c  (
    .I0(\blk00000001/sig0000003a ),
    .I1(\blk00000001/sig00000147 ),
    .I2(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000139 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000025b  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig00000146 ),
    .I2(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000138 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000025a  (
    .I0(\blk00000001/sig00000038 ),
    .I1(\blk00000001/sig00000145 ),
    .I2(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000137 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000259  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig00000144 ),
    .I2(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000136 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000258  (
    .I0(\blk00000001/sig00000036 ),
    .I1(\blk00000001/sig00000143 ),
    .I2(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000135 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000257  (
    .I0(\blk00000001/sig00000035 ),
    .I1(\blk00000001/sig00000142 ),
    .I2(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000134 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000001/blk00000256  (
    .I0(\blk00000001/sig00000141 ),
    .I1(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000133 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000255  (
    .I0(\blk00000001/sig0000014d ),
    .I1(\blk00000001/sig0000014c ),
    .I2(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig0000013e )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000254  (
    .I0(\blk00000001/sig0000014d ),
    .I1(\blk00000001/sig0000014b ),
    .I2(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig0000013d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000253  (
    .I0(\blk00000001/sig0000014d ),
    .I1(\blk00000001/sig0000014a ),
    .I2(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig0000013c )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000001/blk00000252  (
    .I0(\blk00000001/sig00000140 ),
    .I1(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000132 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000251  (
    .I0(\blk00000001/sig0000012f ),
    .I1(\blk00000001/sig0000012c ),
    .I2(s_axis_cartesian_tdata[17]),
    .O(\blk00000001/sig00000128 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000250  (
    .I0(\blk00000001/sig0000012f ),
    .I1(\blk00000001/sig0000012b ),
    .I2(s_axis_cartesian_tdata[16]),
    .O(\blk00000001/sig00000127 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000024f  (
    .I0(\blk00000001/sig00000126 ),
    .I1(\blk00000001/sig00000119 ),
    .I2(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig0000010d )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000024e  (
    .I0(\blk00000001/sig00000125 ),
    .I1(\blk00000001/sig00000118 ),
    .I2(\blk00000001/sig00000124 ),
    .O(\blk00000001/sig0000010c )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000024d  (
    .I0(\blk00000001/sig00000028 ),
    .I1(\blk00000001/sig00000108 ),
    .I2(\blk00000001/sig00000109 ),
    .O(\blk00000001/sig00000103 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000024c  (
    .I0(\blk00000001/sig00000027 ),
    .I1(\blk00000001/sig00000107 ),
    .I2(\blk00000001/sig00000109 ),
    .O(\blk00000001/sig00000102 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000024b  (
    .I0(\blk00000001/sig00000026 ),
    .I1(\blk00000001/sig00000106 ),
    .I2(\blk00000001/sig00000109 ),
    .O(\blk00000001/sig00000101 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000024a  (
    .I0(\blk00000001/sig0000010b ),
    .I1(\blk00000001/sig00000105 ),
    .I2(\blk00000001/sig00000109 ),
    .O(\blk00000001/sig00000100 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000249  (
    .I0(\blk00000001/sig0000010a ),
    .I1(\blk00000001/sig00000104 ),
    .I2(\blk00000001/sig00000109 ),
    .O(\blk00000001/sig000000ff )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000248  (
    .I0(\blk00000001/sig0000005c ),
    .I1(\blk00000001/sig000000fa ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000ef )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000247  (
    .I0(\blk00000001/sig0000005b ),
    .I1(\blk00000001/sig000000f9 ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000ee )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000246  (
    .I0(\blk00000001/sig0000005a ),
    .I1(\blk00000001/sig000000f8 ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000ed )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000245  (
    .I0(\blk00000001/sig00000059 ),
    .I1(\blk00000001/sig000000f7 ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000ec )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000244  (
    .I0(\blk00000001/sig00000058 ),
    .I1(\blk00000001/sig000000f6 ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000eb )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000243  (
    .I0(\blk00000001/sig00000057 ),
    .I1(\blk00000001/sig000000f5 ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000ea )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000242  (
    .I0(\blk00000001/sig00000056 ),
    .I1(\blk00000001/sig000000f4 ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000e9 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000241  (
    .I0(\blk00000001/sig00000055 ),
    .I1(\blk00000001/sig000000f3 ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000e8 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000240  (
    .I0(\blk00000001/sig000000fe ),
    .I1(\blk00000001/sig000000f2 ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000e7 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000023f  (
    .I0(\blk00000001/sig0000005d ),
    .I1(\blk00000001/sig000000fb ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000f0 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000023e  (
    .I0(\blk00000001/sig000000fd ),
    .I1(\blk00000001/sig000000f1 ),
    .I2(\blk00000001/sig000000fc ),
    .O(\blk00000001/sig000000e6 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000023d  (
    .I0(\blk00000001/sig000000e5 ),
    .I1(\blk00000001/sig000000de ),
    .I2(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig000000d8 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000023c  (
    .I0(\blk00000001/sig000000e4 ),
    .I1(\blk00000001/sig000000dd ),
    .I2(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig000000d7 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000023b  (
    .I0(\blk00000001/sig000000d6 ),
    .I1(\blk00000001/sig000000cb ),
    .I2(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c1 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000023a  (
    .I0(\blk00000001/sig000000d5 ),
    .I1(\blk00000001/sig000000ca ),
    .I2(\blk00000001/sig000000d4 ),
    .O(\blk00000001/sig000000c0 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000239  (
    .I0(\blk00000001/sig00000053 ),
    .I1(\blk00000001/sig000000bc ),
    .I2(\blk00000001/sig000000bd ),
    .O(\blk00000001/sig000000b5 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000238  (
    .I0(\blk00000001/sig00000052 ),
    .I1(\blk00000001/sig000000bb ),
    .I2(\blk00000001/sig000000bd ),
    .O(\blk00000001/sig000000b4 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000237  (
    .I0(\blk00000001/sig00000051 ),
    .I1(\blk00000001/sig000000ba ),
    .I2(\blk00000001/sig000000bd ),
    .O(\blk00000001/sig000000b3 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000236  (
    .I0(\blk00000001/sig00000050 ),
    .I1(\blk00000001/sig000000b9 ),
    .I2(\blk00000001/sig000000bd ),
    .O(\blk00000001/sig000000b2 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000235  (
    .I0(\blk00000001/sig0000004f ),
    .I1(\blk00000001/sig000000b8 ),
    .I2(\blk00000001/sig000000bd ),
    .O(\blk00000001/sig000000b1 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000234  (
    .I0(\blk00000001/sig000000bf ),
    .I1(\blk00000001/sig000000b7 ),
    .I2(\blk00000001/sig000000bd ),
    .O(\blk00000001/sig000000b0 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000233  (
    .I0(\blk00000001/sig000000be ),
    .I1(\blk00000001/sig000000b6 ),
    .I2(\blk00000001/sig000000bd ),
    .O(\blk00000001/sig000000af )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000232  (
    .I0(\blk00000001/sig0000006c ),
    .I1(\blk00000001/sig000000ab ),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig000000a2 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000231  (
    .I0(\blk00000001/sig0000006b ),
    .I1(\blk00000001/sig000000aa ),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig000000a1 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000230  (
    .I0(\blk00000001/sig0000006a ),
    .I1(\blk00000001/sig000000a9 ),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig000000a0 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000022f  (
    .I0(\blk00000001/sig00000069 ),
    .I1(\blk00000001/sig000000a8 ),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig0000009f )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000022e  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig000000a7 ),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig0000009e )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000022d  (
    .I0(\blk00000001/sig00000067 ),
    .I1(\blk00000001/sig000000a6 ),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig0000009d )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000022c  (
    .I0(\blk00000001/sig00000066 ),
    .I1(\blk00000001/sig000000a5 ),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig0000009c )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000022b  (
    .I0(\blk00000001/sig000000ae ),
    .I1(\blk00000001/sig000000a4 ),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig0000009b )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000022a  (
    .I0(\blk00000001/sig000000ad ),
    .I1(\blk00000001/sig000000a3 ),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig0000009a )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000229  (
    .I0(\blk00000001/sig00000099 ),
    .I1(\blk00000001/sig00000090 ),
    .I2(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000088 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000228  (
    .I0(\blk00000001/sig00000098 ),
    .I1(\blk00000001/sig0000008f ),
    .I2(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000087 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \blk00000001/blk00000227  (
    .I0(s_axis_cartesian_tdata[18]),
    .I1(s_axis_cartesian_tdata[19]),
    .I2(s_axis_cartesian_tdata[20]),
    .O(\blk00000001/sig00000014 )
  );
  LUT3 #(
    .INIT ( 8'h98 ))
  \blk00000001/blk00000226  (
    .I0(s_axis_cartesian_tdata[18]),
    .I1(s_axis_cartesian_tdata[20]),
    .I2(s_axis_cartesian_tdata[19]),
    .O(\blk00000001/sig00000012 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \blk00000001/blk00000225  (
    .I0(s_axis_cartesian_tdata[19]),
    .I1(s_axis_cartesian_tdata[18]),
    .I2(s_axis_cartesian_tdata[20]),
    .O(\blk00000001/sig00000011 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ed  (
    .C(aclk),
    .D(\blk00000001/sig0000014e ),
    .Q(\blk00000001/sig00000016 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ec  (
    .C(aclk),
    .D(\blk00000001/sig0000014d ),
    .Q(\blk00000001/sig00000017 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001eb  (
    .C(aclk),
    .D(\blk00000001/sig0000002a ),
    .Q(\blk00000001/sig00000022 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ea  (
    .C(aclk),
    .D(\blk00000001/sig0000002b ),
    .Q(\blk00000001/sig00000018 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001e9  (
    .C(aclk),
    .D(\blk00000001/sig0000002c ),
    .Q(\blk00000001/sig00000019 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001e8  (
    .C(aclk),
    .D(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig0000001a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001e7  (
    .C(aclk),
    .D(\blk00000001/sig0000002e ),
    .Q(\blk00000001/sig0000001b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001e6  (
    .C(aclk),
    .D(\blk00000001/sig0000002f ),
    .Q(\blk00000001/sig0000001c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001e5  (
    .C(aclk),
    .D(\blk00000001/sig00000030 ),
    .Q(\blk00000001/sig0000001d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001e4  (
    .C(aclk),
    .D(\blk00000001/sig00000031 ),
    .Q(\blk00000001/sig0000001e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001e3  (
    .C(aclk),
    .D(\blk00000001/sig00000032 ),
    .Q(\blk00000001/sig0000001f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001e2  (
    .C(aclk),
    .D(\blk00000001/sig00000033 ),
    .Q(\blk00000001/sig00000020 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001e1  (
    .C(aclk),
    .D(\blk00000001/sig00000034 ),
    .Q(\blk00000001/sig00000021 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000181  (
    .C(aclk),
    .D(\blk00000001/sig00000127 ),
    .Q(\blk00000001/sig00000026 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000180  (
    .C(aclk),
    .D(\blk00000001/sig00000128 ),
    .Q(\blk00000001/sig00000027 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000017f  (
    .C(aclk),
    .D(\blk00000001/sig00000129 ),
    .Q(\blk00000001/sig00000028 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000017e  (
    .C(aclk),
    .D(\blk00000001/sig0000012a ),
    .Q(\blk00000001/sig00000029 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000017d  (
    .C(aclk),
    .D(\blk00000001/sig0000012f ),
    .Q(\blk00000001/sig00000023 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000017c  (
    .C(aclk),
    .D(\blk00000001/sig00000014 ),
    .Q(\blk00000001/sig00000024 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000017b  (
    .C(aclk),
    .D(\blk00000001/sig00000015 ),
    .Q(\blk00000001/sig00000025 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000166  (
    .C(aclk),
    .D(\blk00000001/sig0000010c ),
    .Q(\blk00000001/sig00000035 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000165  (
    .C(aclk),
    .D(\blk00000001/sig0000010d ),
    .Q(\blk00000001/sig00000036 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000164  (
    .C(aclk),
    .D(\blk00000001/sig0000010e ),
    .Q(\blk00000001/sig00000037 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000163  (
    .C(aclk),
    .D(\blk00000001/sig0000010f ),
    .Q(\blk00000001/sig00000038 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000162  (
    .C(aclk),
    .D(\blk00000001/sig00000110 ),
    .Q(\blk00000001/sig00000039 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000161  (
    .C(aclk),
    .D(\blk00000001/sig00000111 ),
    .Q(\blk00000001/sig0000003a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000160  (
    .C(aclk),
    .D(\blk00000001/sig00000112 ),
    .Q(\blk00000001/sig0000003b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015f  (
    .C(aclk),
    .D(\blk00000001/sig00000113 ),
    .Q(\blk00000001/sig0000003c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015e  (
    .C(aclk),
    .D(\blk00000001/sig00000114 ),
    .Q(\blk00000001/sig0000003d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015d  (
    .C(aclk),
    .D(\blk00000001/sig00000115 ),
    .Q(\blk00000001/sig0000003e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015c  (
    .C(aclk),
    .D(\blk00000001/sig00000116 ),
    .Q(\blk00000001/sig0000003f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015b  (
    .C(aclk),
    .D(\blk00000001/sig00000117 ),
    .Q(\blk00000001/sig00000040 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000015a  (
    .C(aclk),
    .D(\blk00000001/sig00000124 ),
    .Q(\blk00000001/sig0000002a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000159  (
    .C(aclk),
    .D(\blk00000001/sig000000fc ),
    .Q(\blk00000001/sig0000002b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000158  (
    .C(aclk),
    .D(\blk00000001/sig00000041 ),
    .Q(\blk00000001/sig0000002c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000157  (
    .C(aclk),
    .D(\blk00000001/sig00000042 ),
    .Q(\blk00000001/sig0000002d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000156  (
    .C(aclk),
    .D(\blk00000001/sig00000043 ),
    .Q(\blk00000001/sig0000002e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000155  (
    .C(aclk),
    .D(\blk00000001/sig00000044 ),
    .Q(\blk00000001/sig0000002f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000154  (
    .C(aclk),
    .D(\blk00000001/sig00000045 ),
    .Q(\blk00000001/sig00000030 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000153  (
    .C(aclk),
    .D(\blk00000001/sig00000046 ),
    .Q(\blk00000001/sig00000031 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000152  (
    .C(aclk),
    .D(\blk00000001/sig00000047 ),
    .Q(\blk00000001/sig00000032 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000151  (
    .C(aclk),
    .D(\blk00000001/sig00000048 ),
    .Q(\blk00000001/sig00000033 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000150  (
    .C(aclk),
    .D(\blk00000001/sig00000049 ),
    .Q(\blk00000001/sig00000034 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010a  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(s_axis_cartesian_tdata[15]),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig0000010b )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000109  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(s_axis_cartesian_tdata[14]),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig0000010a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000de  (
    .C(aclk),
    .D(\blk00000001/sig000000d7 ),
    .Q(\blk00000001/sig0000004f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000dd  (
    .C(aclk),
    .D(\blk00000001/sig000000d8 ),
    .Q(\blk00000001/sig00000050 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000dc  (
    .C(aclk),
    .D(\blk00000001/sig000000d9 ),
    .Q(\blk00000001/sig00000051 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000db  (
    .C(aclk),
    .D(\blk00000001/sig000000da ),
    .Q(\blk00000001/sig00000052 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000da  (
    .C(aclk),
    .D(\blk00000001/sig000000db ),
    .Q(\blk00000001/sig00000053 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000d9  (
    .C(aclk),
    .D(\blk00000001/sig000000dc ),
    .Q(\blk00000001/sig00000054 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000d8  (
    .C(aclk),
    .D(\blk00000001/sig000000e3 ),
    .Q(\blk00000001/sig0000004a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000d7  (
    .C(aclk),
    .D(\blk00000001/sig00000109 ),
    .Q(\blk00000001/sig0000004b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000d6  (
    .C(aclk),
    .D(\blk00000001/sig00000023 ),
    .Q(\blk00000001/sig0000004c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000d5  (
    .C(aclk),
    .D(\blk00000001/sig00000024 ),
    .Q(\blk00000001/sig0000004d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000d4  (
    .C(aclk),
    .D(\blk00000001/sig00000025 ),
    .Q(\blk00000001/sig0000004e )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b8  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(s_axis_cartesian_tdata[12]),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig000000e4 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b7  (
    .C(aclk),
    .CE(\blk00000001/sig0000000f ),
    .D(s_axis_cartesian_tdata[13]),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig000000e5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b6  (
    .C(aclk),
    .D(\blk00000001/sig000000c0 ),
    .Q(\blk00000001/sig00000055 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b5  (
    .C(aclk),
    .D(\blk00000001/sig000000c1 ),
    .Q(\blk00000001/sig00000056 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b4  (
    .C(aclk),
    .D(\blk00000001/sig000000c2 ),
    .Q(\blk00000001/sig00000057 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b3  (
    .C(aclk),
    .D(\blk00000001/sig000000c3 ),
    .Q(\blk00000001/sig00000058 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b2  (
    .C(aclk),
    .D(\blk00000001/sig000000c4 ),
    .Q(\blk00000001/sig00000059 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b1  (
    .C(aclk),
    .D(\blk00000001/sig000000c5 ),
    .Q(\blk00000001/sig0000005a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b0  (
    .C(aclk),
    .D(\blk00000001/sig000000c6 ),
    .Q(\blk00000001/sig0000005b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000af  (
    .C(aclk),
    .D(\blk00000001/sig000000c7 ),
    .Q(\blk00000001/sig0000005c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ae  (
    .C(aclk),
    .D(\blk00000001/sig000000c8 ),
    .Q(\blk00000001/sig0000005d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ad  (
    .C(aclk),
    .D(\blk00000001/sig000000c9 ),
    .Q(\blk00000001/sig0000005e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ac  (
    .C(aclk),
    .D(\blk00000001/sig000000d4 ),
    .Q(\blk00000001/sig00000041 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ab  (
    .C(aclk),
    .D(\blk00000001/sig000000ac ),
    .Q(\blk00000001/sig00000042 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000aa  (
    .C(aclk),
    .D(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig00000043 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a9  (
    .C(aclk),
    .D(\blk00000001/sig00000060 ),
    .Q(\blk00000001/sig00000044 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a8  (
    .C(aclk),
    .D(\blk00000001/sig00000061 ),
    .Q(\blk00000001/sig00000045 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a7  (
    .C(aclk),
    .D(\blk00000001/sig00000062 ),
    .Q(\blk00000001/sig00000046 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a6  (
    .C(aclk),
    .D(\blk00000001/sig00000063 ),
    .Q(\blk00000001/sig00000047 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a5  (
    .C(aclk),
    .D(\blk00000001/sig00000064 ),
    .Q(\blk00000001/sig00000048 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a4  (
    .C(aclk),
    .D(\blk00000001/sig00000065 ),
    .Q(\blk00000001/sig00000049 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003a  (
    .C(aclk),
    .D(\blk00000001/sig00000087 ),
    .Q(\blk00000001/sig00000066 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000039  (
    .C(aclk),
    .D(\blk00000001/sig00000088 ),
    .Q(\blk00000001/sig00000067 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000038  (
    .C(aclk),
    .D(\blk00000001/sig00000089 ),
    .Q(\blk00000001/sig00000068 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000037  (
    .C(aclk),
    .D(\blk00000001/sig0000008a ),
    .Q(\blk00000001/sig00000069 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000036  (
    .C(aclk),
    .D(\blk00000001/sig0000008b ),
    .Q(\blk00000001/sig0000006a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000035  (
    .C(aclk),
    .D(\blk00000001/sig0000008c ),
    .Q(\blk00000001/sig0000006b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000034  (
    .C(aclk),
    .D(\blk00000001/sig0000008d ),
    .Q(\blk00000001/sig0000006c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000033  (
    .C(aclk),
    .D(\blk00000001/sig0000008e ),
    .Q(\blk00000001/sig0000006d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000032  (
    .C(aclk),
    .D(\blk00000001/sig00000097 ),
    .Q(\blk00000001/sig0000005f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000031  (
    .C(aclk),
    .D(\blk00000001/sig000000bd ),
    .Q(\blk00000001/sig00000060 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000030  (
    .C(aclk),
    .D(\blk00000001/sig0000004a ),
    .Q(\blk00000001/sig00000061 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002f  (
    .C(aclk),
    .D(\blk00000001/sig0000004b ),
    .Q(\blk00000001/sig00000062 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e  (
    .C(aclk),
    .D(\blk00000001/sig0000004c ),
    .Q(\blk00000001/sig00000063 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002d  (
    .C(aclk),
    .D(\blk00000001/sig0000004d ),
    .Q(\blk00000001/sig00000064 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002c  (
    .C(aclk),
    .D(\blk00000001/sig0000004e ),
    .Q(\blk00000001/sig00000065 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(aclk),
    .D(\blk00000001/sig0000000f ),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig00000082 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(aclk),
    .D(\blk00000001/sig00000082 ),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig00000083 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(aclk),
    .D(\blk00000001/sig00000083 ),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig00000084 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(aclk),
    .D(\blk00000001/sig00000084 ),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig00000085 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(aclk),
    .D(\blk00000001/sig00000085 ),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig00000086 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(aclk),
    .D(\blk00000001/sig00000086 ),
    .R(\blk00000001/sig0000013f ),
    .Q(\blk00000001/sig0000006e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(aclk),
    .D(s_axis_cartesian_tvalid),
    .Q(\blk00000001/sig00000010 )
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig0000013f )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig0000000f )
  );
  INV   \blk00000001/blk0000000b/blk0000002b  (
    .I(\blk00000001/sig000000b5 ),
    .O(\blk00000001/blk0000000b/sig00000179 )
  );
  INV   \blk00000001/blk0000000b/blk0000002a  (
    .I(\blk00000001/sig00000099 ),
    .O(\blk00000001/blk0000000b/sig00000180 )
  );
  INV   \blk00000001/blk0000000b/blk00000029  (
    .I(\blk00000001/sig00000098 ),
    .O(\blk00000001/blk0000000b/sig00000181 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk00000028  (
    .I0(\blk00000001/sig0000004e ),
    .I1(\blk00000001/sig000000b4 ),
    .O(\blk00000001/blk0000000b/sig0000017a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk00000027  (
    .I0(\blk00000001/sig0000004d ),
    .I1(\blk00000001/sig000000b3 ),
    .O(\blk00000001/blk0000000b/sig0000017b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk00000026  (
    .I0(\blk00000001/sig0000004c ),
    .I1(\blk00000001/sig000000b2 ),
    .O(\blk00000001/blk0000000b/sig0000017c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk00000025  (
    .I0(\blk00000001/sig0000004b ),
    .I1(\blk00000001/sig000000b1 ),
    .O(\blk00000001/blk0000000b/sig0000017d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk00000024  (
    .I0(\blk00000001/sig0000004a ),
    .I1(\blk00000001/sig000000b0 ),
    .O(\blk00000001/blk0000000b/sig0000017e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk00000023  (
    .I0(\blk00000001/sig000000bd ),
    .I1(\blk00000001/sig000000af ),
    .O(\blk00000001/blk0000000b/sig0000017f )
  );
  MUXCY   \blk00000001/blk0000000b/blk00000022  (
    .CI(\blk00000001/blk0000000b/sig00000178 ),
    .DI(\blk00000001/sig00000098 ),
    .S(\blk00000001/blk0000000b/sig00000181 ),
    .O(\blk00000001/blk0000000b/sig0000018b )
  );
  MUXCY   \blk00000001/blk0000000b/blk00000021  (
    .CI(\blk00000001/blk0000000b/sig0000018b ),
    .DI(\blk00000001/sig00000099 ),
    .S(\blk00000001/blk0000000b/sig00000180 ),
    .O(\blk00000001/blk0000000b/sig0000018a )
  );
  MUXCY   \blk00000001/blk0000000b/blk00000020  (
    .CI(\blk00000001/blk0000000b/sig0000018a ),
    .DI(\blk00000001/sig000000af ),
    .S(\blk00000001/blk0000000b/sig0000017f ),
    .O(\blk00000001/blk0000000b/sig00000189 )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001f  (
    .CI(\blk00000001/blk0000000b/sig00000189 ),
    .DI(\blk00000001/sig000000b0 ),
    .S(\blk00000001/blk0000000b/sig0000017e ),
    .O(\blk00000001/blk0000000b/sig00000188 )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001e  (
    .CI(\blk00000001/blk0000000b/sig00000188 ),
    .DI(\blk00000001/sig000000b1 ),
    .S(\blk00000001/blk0000000b/sig0000017d ),
    .O(\blk00000001/blk0000000b/sig00000187 )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001d  (
    .CI(\blk00000001/blk0000000b/sig00000187 ),
    .DI(\blk00000001/sig000000b2 ),
    .S(\blk00000001/blk0000000b/sig0000017c ),
    .O(\blk00000001/blk0000000b/sig00000186 )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001c  (
    .CI(\blk00000001/blk0000000b/sig00000186 ),
    .DI(\blk00000001/sig000000b3 ),
    .S(\blk00000001/blk0000000b/sig0000017b ),
    .O(\blk00000001/blk0000000b/sig00000185 )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001b  (
    .CI(\blk00000001/blk0000000b/sig00000185 ),
    .DI(\blk00000001/sig000000b4 ),
    .S(\blk00000001/blk0000000b/sig0000017a ),
    .O(\blk00000001/blk0000000b/sig00000184 )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001a  (
    .CI(\blk00000001/blk0000000b/sig00000184 ),
    .DI(\blk00000001/sig000000b5 ),
    .S(\blk00000001/blk0000000b/sig00000179 ),
    .O(\blk00000001/blk0000000b/sig00000183 )
  );
  MUXCY   \blk00000001/blk0000000b/blk00000019  (
    .CI(\blk00000001/blk0000000b/sig00000183 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk0000000b/sig00000177 ),
    .O(\blk00000001/blk0000000b/sig00000182 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000018  (
    .CI(\blk00000001/blk0000000b/sig0000018b ),
    .LI(\blk00000001/blk0000000b/sig00000180 ),
    .O(\blk00000001/sig00000090 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000017  (
    .CI(\blk00000001/blk0000000b/sig0000018a ),
    .LI(\blk00000001/blk0000000b/sig0000017f ),
    .O(\blk00000001/sig00000091 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000016  (
    .CI(\blk00000001/blk0000000b/sig00000189 ),
    .LI(\blk00000001/blk0000000b/sig0000017e ),
    .O(\blk00000001/sig00000092 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000015  (
    .CI(\blk00000001/blk0000000b/sig00000188 ),
    .LI(\blk00000001/blk0000000b/sig0000017d ),
    .O(\blk00000001/sig00000093 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000014  (
    .CI(\blk00000001/blk0000000b/sig00000187 ),
    .LI(\blk00000001/blk0000000b/sig0000017c ),
    .O(\blk00000001/sig00000094 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000013  (
    .CI(\blk00000001/blk0000000b/sig00000186 ),
    .LI(\blk00000001/blk0000000b/sig0000017b ),
    .O(\blk00000001/sig00000095 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000012  (
    .CI(\blk00000001/blk0000000b/sig00000185 ),
    .LI(\blk00000001/blk0000000b/sig0000017a ),
    .O(\blk00000001/sig00000096 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000011  (
    .CI(\blk00000001/blk0000000b/sig00000184 ),
    .LI(\blk00000001/blk0000000b/sig00000179 ),
    .O(\blk00000001/blk0000000b/sig0000016e )
  );
  XORCY   \blk00000001/blk0000000b/blk00000010  (
    .CI(\blk00000001/blk0000000b/sig00000183 ),
    .LI(\blk00000001/blk0000000b/sig00000177 ),
    .O(\blk00000001/sig00000097 )
  );
  XORCY   \blk00000001/blk0000000b/blk0000000f  (
    .CI(\blk00000001/blk0000000b/sig00000182 ),
    .LI(\blk00000001/blk0000000b/sig00000177 ),
    .O(\blk00000001/blk0000000b/sig0000016c )
  );
  XORCY   \blk00000001/blk0000000b/blk0000000e  (
    .CI(\blk00000001/blk0000000b/sig00000178 ),
    .LI(\blk00000001/blk0000000b/sig00000181 ),
    .O(\blk00000001/sig0000008f )
  );
  GND   \blk00000001/blk0000000b/blk0000000d  (
    .G(\blk00000001/blk0000000b/sig00000178 )
  );
  VCC   \blk00000001/blk0000000b/blk0000000c  (
    .P(\blk00000001/blk0000000b/sig00000177 )
  );
  INV   \blk00000001/blk0000003b/blk0000005e  (
    .I(\blk00000001/sig0000006d ),
    .O(\blk00000001/blk0000003b/sig000001ac )
  );
  INV   \blk00000001/blk0000003b/blk0000005d  (
    .I(\blk00000001/sig000000ae ),
    .O(\blk00000001/blk0000003b/sig000001b4 )
  );
  INV   \blk00000001/blk0000003b/blk0000005c  (
    .I(\blk00000001/sig000000ad ),
    .O(\blk00000001/blk0000003b/sig000001b5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b/blk0000005b  (
    .I0(\blk00000001/sig0000006c ),
    .I1(\blk00000001/sig00000065 ),
    .O(\blk00000001/blk0000003b/sig000001ad )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b/blk0000005a  (
    .I0(\blk00000001/sig0000006b ),
    .I1(\blk00000001/sig00000064 ),
    .O(\blk00000001/blk0000003b/sig000001ae )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b/blk00000059  (
    .I0(\blk00000001/sig0000006a ),
    .I1(\blk00000001/sig00000063 ),
    .O(\blk00000001/blk0000003b/sig000001af )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b/blk00000058  (
    .I0(\blk00000001/sig00000069 ),
    .I1(\blk00000001/sig00000062 ),
    .O(\blk00000001/blk0000003b/sig000001b0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b/blk00000057  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000061 ),
    .O(\blk00000001/blk0000003b/sig000001b1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b/blk00000056  (
    .I0(\blk00000001/sig00000067 ),
    .I1(\blk00000001/sig00000060 ),
    .O(\blk00000001/blk0000003b/sig000001b2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b/blk00000055  (
    .I0(\blk00000001/sig00000066 ),
    .I1(\blk00000001/sig0000005f ),
    .O(\blk00000001/blk0000003b/sig000001b3 )
  );
  MUXCY   \blk00000001/blk0000003b/blk00000054  (
    .CI(\blk00000001/blk0000003b/sig000001ab ),
    .DI(\blk00000001/sig000000ad ),
    .S(\blk00000001/blk0000003b/sig000001b5 ),
    .O(\blk00000001/blk0000003b/sig000001c0 )
  );
  MUXCY   \blk00000001/blk0000003b/blk00000053  (
    .CI(\blk00000001/blk0000003b/sig000001c0 ),
    .DI(\blk00000001/sig000000ae ),
    .S(\blk00000001/blk0000003b/sig000001b4 ),
    .O(\blk00000001/blk0000003b/sig000001bf )
  );
  MUXCY   \blk00000001/blk0000003b/blk00000052  (
    .CI(\blk00000001/blk0000003b/sig000001bf ),
    .DI(\blk00000001/sig00000066 ),
    .S(\blk00000001/blk0000003b/sig000001b3 ),
    .O(\blk00000001/blk0000003b/sig000001be )
  );
  MUXCY   \blk00000001/blk0000003b/blk00000051  (
    .CI(\blk00000001/blk0000003b/sig000001be ),
    .DI(\blk00000001/sig00000067 ),
    .S(\blk00000001/blk0000003b/sig000001b2 ),
    .O(\blk00000001/blk0000003b/sig000001bd )
  );
  MUXCY   \blk00000001/blk0000003b/blk00000050  (
    .CI(\blk00000001/blk0000003b/sig000001bd ),
    .DI(\blk00000001/sig00000068 ),
    .S(\blk00000001/blk0000003b/sig000001b1 ),
    .O(\blk00000001/blk0000003b/sig000001bc )
  );
  MUXCY   \blk00000001/blk0000003b/blk0000004f  (
    .CI(\blk00000001/blk0000003b/sig000001bc ),
    .DI(\blk00000001/sig00000069 ),
    .S(\blk00000001/blk0000003b/sig000001b0 ),
    .O(\blk00000001/blk0000003b/sig000001bb )
  );
  MUXCY   \blk00000001/blk0000003b/blk0000004e  (
    .CI(\blk00000001/blk0000003b/sig000001bb ),
    .DI(\blk00000001/sig0000006a ),
    .S(\blk00000001/blk0000003b/sig000001af ),
    .O(\blk00000001/blk0000003b/sig000001ba )
  );
  MUXCY   \blk00000001/blk0000003b/blk0000004d  (
    .CI(\blk00000001/blk0000003b/sig000001ba ),
    .DI(\blk00000001/sig0000006b ),
    .S(\blk00000001/blk0000003b/sig000001ae ),
    .O(\blk00000001/blk0000003b/sig000001b9 )
  );
  MUXCY   \blk00000001/blk0000003b/blk0000004c  (
    .CI(\blk00000001/blk0000003b/sig000001b9 ),
    .DI(\blk00000001/sig0000006c ),
    .S(\blk00000001/blk0000003b/sig000001ad ),
    .O(\blk00000001/blk0000003b/sig000001b8 )
  );
  MUXCY   \blk00000001/blk0000003b/blk0000004b  (
    .CI(\blk00000001/blk0000003b/sig000001b8 ),
    .DI(\blk00000001/sig0000006d ),
    .S(\blk00000001/blk0000003b/sig000001ac ),
    .O(\blk00000001/blk0000003b/sig000001b7 )
  );
  MUXCY   \blk00000001/blk0000003b/blk0000004a  (
    .CI(\blk00000001/blk0000003b/sig000001b7 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk0000003b/sig000001aa ),
    .O(\blk00000001/blk0000003b/sig000001b6 )
  );
  XORCY   \blk00000001/blk0000003b/blk00000049  (
    .CI(\blk00000001/blk0000003b/sig000001c0 ),
    .LI(\blk00000001/blk0000003b/sig000001b4 ),
    .O(\blk00000001/sig000000a4 )
  );
  XORCY   \blk00000001/blk0000003b/blk00000048  (
    .CI(\blk00000001/blk0000003b/sig000001bf ),
    .LI(\blk00000001/blk0000003b/sig000001b3 ),
    .O(\blk00000001/sig000000a5 )
  );
  XORCY   \blk00000001/blk0000003b/blk00000047  (
    .CI(\blk00000001/blk0000003b/sig000001be ),
    .LI(\blk00000001/blk0000003b/sig000001b2 ),
    .O(\blk00000001/sig000000a6 )
  );
  XORCY   \blk00000001/blk0000003b/blk00000046  (
    .CI(\blk00000001/blk0000003b/sig000001bd ),
    .LI(\blk00000001/blk0000003b/sig000001b1 ),
    .O(\blk00000001/sig000000a7 )
  );
  XORCY   \blk00000001/blk0000003b/blk00000045  (
    .CI(\blk00000001/blk0000003b/sig000001bc ),
    .LI(\blk00000001/blk0000003b/sig000001b0 ),
    .O(\blk00000001/sig000000a8 )
  );
  XORCY   \blk00000001/blk0000003b/blk00000044  (
    .CI(\blk00000001/blk0000003b/sig000001bb ),
    .LI(\blk00000001/blk0000003b/sig000001af ),
    .O(\blk00000001/sig000000a9 )
  );
  XORCY   \blk00000001/blk0000003b/blk00000043  (
    .CI(\blk00000001/blk0000003b/sig000001ba ),
    .LI(\blk00000001/blk0000003b/sig000001ae ),
    .O(\blk00000001/sig000000aa )
  );
  XORCY   \blk00000001/blk0000003b/blk00000042  (
    .CI(\blk00000001/blk0000003b/sig000001b9 ),
    .LI(\blk00000001/blk0000003b/sig000001ad ),
    .O(\blk00000001/sig000000ab )
  );
  XORCY   \blk00000001/blk0000003b/blk00000041  (
    .CI(\blk00000001/blk0000003b/sig000001b8 ),
    .LI(\blk00000001/blk0000003b/sig000001ac ),
    .O(\blk00000001/blk0000003b/sig000001a0 )
  );
  XORCY   \blk00000001/blk0000003b/blk00000040  (
    .CI(\blk00000001/blk0000003b/sig000001b7 ),
    .LI(\blk00000001/blk0000003b/sig000001aa ),
    .O(\blk00000001/sig000000ac )
  );
  XORCY   \blk00000001/blk0000003b/blk0000003f  (
    .CI(\blk00000001/blk0000003b/sig000001b6 ),
    .LI(\blk00000001/blk0000003b/sig000001aa ),
    .O(\blk00000001/blk0000003b/sig0000019e )
  );
  XORCY   \blk00000001/blk0000003b/blk0000003e  (
    .CI(\blk00000001/blk0000003b/sig000001ab ),
    .LI(\blk00000001/blk0000003b/sig000001b5 ),
    .O(\blk00000001/sig000000a3 )
  );
  GND   \blk00000001/blk0000003b/blk0000003d  (
    .G(\blk00000001/blk0000003b/sig000001ab )
  );
  VCC   \blk00000001/blk0000003b/blk0000003c  (
    .P(\blk00000001/blk0000003b/sig000001aa )
  );
  INV   \blk00000001/blk0000005f/blk0000007c  (
    .I(\blk00000001/sig00000054 ),
    .O(\blk00000001/blk0000005f/sig000001db )
  );
  INV   \blk00000001/blk0000005f/blk0000007b  (
    .I(\blk00000001/sig000000bf ),
    .O(\blk00000001/blk0000005f/sig000001e1 )
  );
  INV   \blk00000001/blk0000005f/blk0000007a  (
    .I(\blk00000001/sig000000be ),
    .O(\blk00000001/blk0000005f/sig000001e2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f/blk00000079  (
    .I0(\blk00000001/sig00000053 ),
    .I1(\blk00000001/sig0000004e ),
    .O(\blk00000001/blk0000005f/sig000001dc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f/blk00000078  (
    .I0(\blk00000001/sig00000052 ),
    .I1(\blk00000001/sig0000004d ),
    .O(\blk00000001/blk0000005f/sig000001dd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f/blk00000077  (
    .I0(\blk00000001/sig00000051 ),
    .I1(\blk00000001/sig0000004c ),
    .O(\blk00000001/blk0000005f/sig000001de )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f/blk00000076  (
    .I0(\blk00000001/sig00000050 ),
    .I1(\blk00000001/sig0000004b ),
    .O(\blk00000001/blk0000005f/sig000001df )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f/blk00000075  (
    .I0(\blk00000001/sig0000004f ),
    .I1(\blk00000001/sig0000004a ),
    .O(\blk00000001/blk0000005f/sig000001e0 )
  );
  MUXCY   \blk00000001/blk0000005f/blk00000074  (
    .CI(\blk00000001/blk0000005f/sig000001da ),
    .DI(\blk00000001/sig000000be ),
    .S(\blk00000001/blk0000005f/sig000001e2 ),
    .O(\blk00000001/blk0000005f/sig000001eb )
  );
  MUXCY   \blk00000001/blk0000005f/blk00000073  (
    .CI(\blk00000001/blk0000005f/sig000001eb ),
    .DI(\blk00000001/sig000000bf ),
    .S(\blk00000001/blk0000005f/sig000001e1 ),
    .O(\blk00000001/blk0000005f/sig000001ea )
  );
  MUXCY   \blk00000001/blk0000005f/blk00000072  (
    .CI(\blk00000001/blk0000005f/sig000001ea ),
    .DI(\blk00000001/sig0000004f ),
    .S(\blk00000001/blk0000005f/sig000001e0 ),
    .O(\blk00000001/blk0000005f/sig000001e9 )
  );
  MUXCY   \blk00000001/blk0000005f/blk00000071  (
    .CI(\blk00000001/blk0000005f/sig000001e9 ),
    .DI(\blk00000001/sig00000050 ),
    .S(\blk00000001/blk0000005f/sig000001df ),
    .O(\blk00000001/blk0000005f/sig000001e8 )
  );
  MUXCY   \blk00000001/blk0000005f/blk00000070  (
    .CI(\blk00000001/blk0000005f/sig000001e8 ),
    .DI(\blk00000001/sig00000051 ),
    .S(\blk00000001/blk0000005f/sig000001de ),
    .O(\blk00000001/blk0000005f/sig000001e7 )
  );
  MUXCY   \blk00000001/blk0000005f/blk0000006f  (
    .CI(\blk00000001/blk0000005f/sig000001e7 ),
    .DI(\blk00000001/sig00000052 ),
    .S(\blk00000001/blk0000005f/sig000001dd ),
    .O(\blk00000001/blk0000005f/sig000001e6 )
  );
  MUXCY   \blk00000001/blk0000005f/blk0000006e  (
    .CI(\blk00000001/blk0000005f/sig000001e6 ),
    .DI(\blk00000001/sig00000053 ),
    .S(\blk00000001/blk0000005f/sig000001dc ),
    .O(\blk00000001/blk0000005f/sig000001e5 )
  );
  MUXCY   \blk00000001/blk0000005f/blk0000006d  (
    .CI(\blk00000001/blk0000005f/sig000001e5 ),
    .DI(\blk00000001/sig00000054 ),
    .S(\blk00000001/blk0000005f/sig000001db ),
    .O(\blk00000001/blk0000005f/sig000001e4 )
  );
  MUXCY   \blk00000001/blk0000005f/blk0000006c  (
    .CI(\blk00000001/blk0000005f/sig000001e4 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk0000005f/sig000001d9 ),
    .O(\blk00000001/blk0000005f/sig000001e3 )
  );
  XORCY   \blk00000001/blk0000005f/blk0000006b  (
    .CI(\blk00000001/blk0000005f/sig000001eb ),
    .LI(\blk00000001/blk0000005f/sig000001e1 ),
    .O(\blk00000001/sig000000b7 )
  );
  XORCY   \blk00000001/blk0000005f/blk0000006a  (
    .CI(\blk00000001/blk0000005f/sig000001ea ),
    .LI(\blk00000001/blk0000005f/sig000001e0 ),
    .O(\blk00000001/sig000000b8 )
  );
  XORCY   \blk00000001/blk0000005f/blk00000069  (
    .CI(\blk00000001/blk0000005f/sig000001e9 ),
    .LI(\blk00000001/blk0000005f/sig000001df ),
    .O(\blk00000001/sig000000b9 )
  );
  XORCY   \blk00000001/blk0000005f/blk00000068  (
    .CI(\blk00000001/blk0000005f/sig000001e8 ),
    .LI(\blk00000001/blk0000005f/sig000001de ),
    .O(\blk00000001/sig000000ba )
  );
  XORCY   \blk00000001/blk0000005f/blk00000067  (
    .CI(\blk00000001/blk0000005f/sig000001e7 ),
    .LI(\blk00000001/blk0000005f/sig000001dd ),
    .O(\blk00000001/sig000000bb )
  );
  XORCY   \blk00000001/blk0000005f/blk00000066  (
    .CI(\blk00000001/blk0000005f/sig000001e6 ),
    .LI(\blk00000001/blk0000005f/sig000001dc ),
    .O(\blk00000001/sig000000bc )
  );
  XORCY   \blk00000001/blk0000005f/blk00000065  (
    .CI(\blk00000001/blk0000005f/sig000001e5 ),
    .LI(\blk00000001/blk0000005f/sig000001db ),
    .O(\blk00000001/blk0000005f/sig000001d1 )
  );
  XORCY   \blk00000001/blk0000005f/blk00000064  (
    .CI(\blk00000001/blk0000005f/sig000001e4 ),
    .LI(\blk00000001/blk0000005f/sig000001d9 ),
    .O(\blk00000001/sig000000bd )
  );
  XORCY   \blk00000001/blk0000005f/blk00000063  (
    .CI(\blk00000001/blk0000005f/sig000001e3 ),
    .LI(\blk00000001/blk0000005f/sig000001d9 ),
    .O(\blk00000001/blk0000005f/sig000001cf )
  );
  XORCY   \blk00000001/blk0000005f/blk00000062  (
    .CI(\blk00000001/blk0000005f/sig000001da ),
    .LI(\blk00000001/blk0000005f/sig000001e2 ),
    .O(\blk00000001/sig000000b6 )
  );
  GND   \blk00000001/blk0000005f/blk00000061  (
    .G(\blk00000001/blk0000005f/sig000001da )
  );
  VCC   \blk00000001/blk0000005f/blk00000060  (
    .P(\blk00000001/blk0000005f/sig000001d9 )
  );
  INV   \blk00000001/blk0000007d/blk000000a3  (
    .I(\blk00000001/sig000000a2 ),
    .O(\blk00000001/blk0000007d/sig0000020f )
  );
  INV   \blk00000001/blk0000007d/blk000000a2  (
    .I(\blk00000001/sig000000d6 ),
    .O(\blk00000001/blk0000007d/sig00000218 )
  );
  INV   \blk00000001/blk0000007d/blk000000a1  (
    .I(\blk00000001/sig000000d5 ),
    .O(\blk00000001/blk0000007d/sig00000219 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007d/blk000000a0  (
    .I0(\blk00000001/sig00000065 ),
    .I1(\blk00000001/sig000000a1 ),
    .O(\blk00000001/blk0000007d/sig00000210 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007d/blk0000009f  (
    .I0(\blk00000001/sig00000064 ),
    .I1(\blk00000001/sig000000a0 ),
    .O(\blk00000001/blk0000007d/sig00000211 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007d/blk0000009e  (
    .I0(\blk00000001/sig00000063 ),
    .I1(\blk00000001/sig0000009f ),
    .O(\blk00000001/blk0000007d/sig00000212 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007d/blk0000009d  (
    .I0(\blk00000001/sig00000062 ),
    .I1(\blk00000001/sig0000009e ),
    .O(\blk00000001/blk0000007d/sig00000213 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007d/blk0000009c  (
    .I0(\blk00000001/sig00000061 ),
    .I1(\blk00000001/sig0000009d ),
    .O(\blk00000001/blk0000007d/sig00000214 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007d/blk0000009b  (
    .I0(\blk00000001/sig00000060 ),
    .I1(\blk00000001/sig0000009c ),
    .O(\blk00000001/blk0000007d/sig00000215 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007d/blk0000009a  (
    .I0(\blk00000001/sig0000005f ),
    .I1(\blk00000001/sig0000009b ),
    .O(\blk00000001/blk0000007d/sig00000216 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000007d/blk00000099  (
    .I0(\blk00000001/sig000000ac ),
    .I1(\blk00000001/sig0000009a ),
    .O(\blk00000001/blk0000007d/sig00000217 )
  );
  MUXCY   \blk00000001/blk0000007d/blk00000098  (
    .CI(\blk00000001/blk0000007d/sig0000020e ),
    .DI(\blk00000001/sig000000d5 ),
    .S(\blk00000001/blk0000007d/sig00000219 ),
    .O(\blk00000001/blk0000007d/sig00000225 )
  );
  MUXCY   \blk00000001/blk0000007d/blk00000097  (
    .CI(\blk00000001/blk0000007d/sig00000225 ),
    .DI(\blk00000001/sig000000d6 ),
    .S(\blk00000001/blk0000007d/sig00000218 ),
    .O(\blk00000001/blk0000007d/sig00000224 )
  );
  MUXCY   \blk00000001/blk0000007d/blk00000096  (
    .CI(\blk00000001/blk0000007d/sig00000224 ),
    .DI(\blk00000001/sig0000009a ),
    .S(\blk00000001/blk0000007d/sig00000217 ),
    .O(\blk00000001/blk0000007d/sig00000223 )
  );
  MUXCY   \blk00000001/blk0000007d/blk00000095  (
    .CI(\blk00000001/blk0000007d/sig00000223 ),
    .DI(\blk00000001/sig0000009b ),
    .S(\blk00000001/blk0000007d/sig00000216 ),
    .O(\blk00000001/blk0000007d/sig00000222 )
  );
  MUXCY   \blk00000001/blk0000007d/blk00000094  (
    .CI(\blk00000001/blk0000007d/sig00000222 ),
    .DI(\blk00000001/sig0000009c ),
    .S(\blk00000001/blk0000007d/sig00000215 ),
    .O(\blk00000001/blk0000007d/sig00000221 )
  );
  MUXCY   \blk00000001/blk0000007d/blk00000093  (
    .CI(\blk00000001/blk0000007d/sig00000221 ),
    .DI(\blk00000001/sig0000009d ),
    .S(\blk00000001/blk0000007d/sig00000214 ),
    .O(\blk00000001/blk0000007d/sig00000220 )
  );
  MUXCY   \blk00000001/blk0000007d/blk00000092  (
    .CI(\blk00000001/blk0000007d/sig00000220 ),
    .DI(\blk00000001/sig0000009e ),
    .S(\blk00000001/blk0000007d/sig00000213 ),
    .O(\blk00000001/blk0000007d/sig0000021f )
  );
  MUXCY   \blk00000001/blk0000007d/blk00000091  (
    .CI(\blk00000001/blk0000007d/sig0000021f ),
    .DI(\blk00000001/sig0000009f ),
    .S(\blk00000001/blk0000007d/sig00000212 ),
    .O(\blk00000001/blk0000007d/sig0000021e )
  );
  MUXCY   \blk00000001/blk0000007d/blk00000090  (
    .CI(\blk00000001/blk0000007d/sig0000021e ),
    .DI(\blk00000001/sig000000a0 ),
    .S(\blk00000001/blk0000007d/sig00000211 ),
    .O(\blk00000001/blk0000007d/sig0000021d )
  );
  MUXCY   \blk00000001/blk0000007d/blk0000008f  (
    .CI(\blk00000001/blk0000007d/sig0000021d ),
    .DI(\blk00000001/sig000000a1 ),
    .S(\blk00000001/blk0000007d/sig00000210 ),
    .O(\blk00000001/blk0000007d/sig0000021c )
  );
  MUXCY   \blk00000001/blk0000007d/blk0000008e  (
    .CI(\blk00000001/blk0000007d/sig0000021c ),
    .DI(\blk00000001/sig000000a2 ),
    .S(\blk00000001/blk0000007d/sig0000020f ),
    .O(\blk00000001/blk0000007d/sig0000021b )
  );
  MUXCY   \blk00000001/blk0000007d/blk0000008d  (
    .CI(\blk00000001/blk0000007d/sig0000021b ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk0000007d/sig0000020d ),
    .O(\blk00000001/blk0000007d/sig0000021a )
  );
  XORCY   \blk00000001/blk0000007d/blk0000008c  (
    .CI(\blk00000001/blk0000007d/sig00000225 ),
    .LI(\blk00000001/blk0000007d/sig00000218 ),
    .O(\blk00000001/sig000000cb )
  );
  XORCY   \blk00000001/blk0000007d/blk0000008b  (
    .CI(\blk00000001/blk0000007d/sig00000224 ),
    .LI(\blk00000001/blk0000007d/sig00000217 ),
    .O(\blk00000001/sig000000cc )
  );
  XORCY   \blk00000001/blk0000007d/blk0000008a  (
    .CI(\blk00000001/blk0000007d/sig00000223 ),
    .LI(\blk00000001/blk0000007d/sig00000216 ),
    .O(\blk00000001/sig000000cd )
  );
  XORCY   \blk00000001/blk0000007d/blk00000089  (
    .CI(\blk00000001/blk0000007d/sig00000222 ),
    .LI(\blk00000001/blk0000007d/sig00000215 ),
    .O(\blk00000001/sig000000ce )
  );
  XORCY   \blk00000001/blk0000007d/blk00000088  (
    .CI(\blk00000001/blk0000007d/sig00000221 ),
    .LI(\blk00000001/blk0000007d/sig00000214 ),
    .O(\blk00000001/sig000000cf )
  );
  XORCY   \blk00000001/blk0000007d/blk00000087  (
    .CI(\blk00000001/blk0000007d/sig00000220 ),
    .LI(\blk00000001/blk0000007d/sig00000213 ),
    .O(\blk00000001/sig000000d0 )
  );
  XORCY   \blk00000001/blk0000007d/blk00000086  (
    .CI(\blk00000001/blk0000007d/sig0000021f ),
    .LI(\blk00000001/blk0000007d/sig00000212 ),
    .O(\blk00000001/sig000000d1 )
  );
  XORCY   \blk00000001/blk0000007d/blk00000085  (
    .CI(\blk00000001/blk0000007d/sig0000021e ),
    .LI(\blk00000001/blk0000007d/sig00000211 ),
    .O(\blk00000001/sig000000d2 )
  );
  XORCY   \blk00000001/blk0000007d/blk00000084  (
    .CI(\blk00000001/blk0000007d/sig0000021d ),
    .LI(\blk00000001/blk0000007d/sig00000210 ),
    .O(\blk00000001/sig000000d3 )
  );
  XORCY   \blk00000001/blk0000007d/blk00000083  (
    .CI(\blk00000001/blk0000007d/sig0000021c ),
    .LI(\blk00000001/blk0000007d/sig0000020f ),
    .O(\blk00000001/blk0000007d/sig00000202 )
  );
  XORCY   \blk00000001/blk0000007d/blk00000082  (
    .CI(\blk00000001/blk0000007d/sig0000021b ),
    .LI(\blk00000001/blk0000007d/sig0000020d ),
    .O(\blk00000001/sig000000d4 )
  );
  XORCY   \blk00000001/blk0000007d/blk00000081  (
    .CI(\blk00000001/blk0000007d/sig0000021a ),
    .LI(\blk00000001/blk0000007d/sig0000020d ),
    .O(\blk00000001/blk0000007d/sig00000200 )
  );
  XORCY   \blk00000001/blk0000007d/blk00000080  (
    .CI(\blk00000001/blk0000007d/sig0000020e ),
    .LI(\blk00000001/blk0000007d/sig00000219 ),
    .O(\blk00000001/sig000000ca )
  );
  GND   \blk00000001/blk0000007d/blk0000007f  (
    .G(\blk00000001/blk0000007d/sig0000020e )
  );
  VCC   \blk00000001/blk0000007d/blk0000007e  (
    .P(\blk00000001/blk0000007d/sig0000020d )
  );
  INV   \blk00000001/blk000000b9/blk000000d3  (
    .I(\blk00000001/sig00000103 ),
    .O(\blk00000001/blk000000b9/sig0000023d )
  );
  INV   \blk00000001/blk000000b9/blk000000d2  (
    .I(\blk00000001/sig000000e5 ),
    .O(\blk00000001/blk000000b9/sig00000242 )
  );
  INV   \blk00000001/blk000000b9/blk000000d1  (
    .I(\blk00000001/sig000000e4 ),
    .O(\blk00000001/blk000000b9/sig00000243 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b9/blk000000d0  (
    .I0(\blk00000001/sig00000025 ),
    .I1(\blk00000001/sig00000102 ),
    .O(\blk00000001/blk000000b9/sig0000023e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b9/blk000000cf  (
    .I0(\blk00000001/sig00000024 ),
    .I1(\blk00000001/sig00000101 ),
    .O(\blk00000001/blk000000b9/sig0000023f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b9/blk000000ce  (
    .I0(\blk00000001/sig00000023 ),
    .I1(\blk00000001/sig00000100 ),
    .O(\blk00000001/blk000000b9/sig00000240 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b9/blk000000cd  (
    .I0(\blk00000001/sig00000109 ),
    .I1(\blk00000001/sig000000ff ),
    .O(\blk00000001/blk000000b9/sig00000241 )
  );
  MUXCY   \blk00000001/blk000000b9/blk000000cc  (
    .CI(\blk00000001/blk000000b9/sig0000023c ),
    .DI(\blk00000001/sig000000e4 ),
    .S(\blk00000001/blk000000b9/sig00000243 ),
    .O(\blk00000001/blk000000b9/sig0000024b )
  );
  MUXCY   \blk00000001/blk000000b9/blk000000cb  (
    .CI(\blk00000001/blk000000b9/sig0000024b ),
    .DI(\blk00000001/sig000000e5 ),
    .S(\blk00000001/blk000000b9/sig00000242 ),
    .O(\blk00000001/blk000000b9/sig0000024a )
  );
  MUXCY   \blk00000001/blk000000b9/blk000000ca  (
    .CI(\blk00000001/blk000000b9/sig0000024a ),
    .DI(\blk00000001/sig000000ff ),
    .S(\blk00000001/blk000000b9/sig00000241 ),
    .O(\blk00000001/blk000000b9/sig00000249 )
  );
  MUXCY   \blk00000001/blk000000b9/blk000000c9  (
    .CI(\blk00000001/blk000000b9/sig00000249 ),
    .DI(\blk00000001/sig00000100 ),
    .S(\blk00000001/blk000000b9/sig00000240 ),
    .O(\blk00000001/blk000000b9/sig00000248 )
  );
  MUXCY   \blk00000001/blk000000b9/blk000000c8  (
    .CI(\blk00000001/blk000000b9/sig00000248 ),
    .DI(\blk00000001/sig00000101 ),
    .S(\blk00000001/blk000000b9/sig0000023f ),
    .O(\blk00000001/blk000000b9/sig00000247 )
  );
  MUXCY   \blk00000001/blk000000b9/blk000000c7  (
    .CI(\blk00000001/blk000000b9/sig00000247 ),
    .DI(\blk00000001/sig00000102 ),
    .S(\blk00000001/blk000000b9/sig0000023e ),
    .O(\blk00000001/blk000000b9/sig00000246 )
  );
  MUXCY   \blk00000001/blk000000b9/blk000000c6  (
    .CI(\blk00000001/blk000000b9/sig00000246 ),
    .DI(\blk00000001/sig00000103 ),
    .S(\blk00000001/blk000000b9/sig0000023d ),
    .O(\blk00000001/blk000000b9/sig00000245 )
  );
  MUXCY   \blk00000001/blk000000b9/blk000000c5  (
    .CI(\blk00000001/blk000000b9/sig00000245 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk000000b9/sig0000023b ),
    .O(\blk00000001/blk000000b9/sig00000244 )
  );
  XORCY   \blk00000001/blk000000b9/blk000000c4  (
    .CI(\blk00000001/blk000000b9/sig0000024b ),
    .LI(\blk00000001/blk000000b9/sig00000242 ),
    .O(\blk00000001/sig000000de )
  );
  XORCY   \blk00000001/blk000000b9/blk000000c3  (
    .CI(\blk00000001/blk000000b9/sig0000024a ),
    .LI(\blk00000001/blk000000b9/sig00000241 ),
    .O(\blk00000001/sig000000df )
  );
  XORCY   \blk00000001/blk000000b9/blk000000c2  (
    .CI(\blk00000001/blk000000b9/sig00000249 ),
    .LI(\blk00000001/blk000000b9/sig00000240 ),
    .O(\blk00000001/sig000000e0 )
  );
  XORCY   \blk00000001/blk000000b9/blk000000c1  (
    .CI(\blk00000001/blk000000b9/sig00000248 ),
    .LI(\blk00000001/blk000000b9/sig0000023f ),
    .O(\blk00000001/sig000000e1 )
  );
  XORCY   \blk00000001/blk000000b9/blk000000c0  (
    .CI(\blk00000001/blk000000b9/sig00000247 ),
    .LI(\blk00000001/blk000000b9/sig0000023e ),
    .O(\blk00000001/sig000000e2 )
  );
  XORCY   \blk00000001/blk000000b9/blk000000bf  (
    .CI(\blk00000001/blk000000b9/sig00000246 ),
    .LI(\blk00000001/blk000000b9/sig0000023d ),
    .O(\blk00000001/blk000000b9/sig00000234 )
  );
  XORCY   \blk00000001/blk000000b9/blk000000be  (
    .CI(\blk00000001/blk000000b9/sig00000245 ),
    .LI(\blk00000001/blk000000b9/sig0000023b ),
    .O(\blk00000001/sig000000e3 )
  );
  XORCY   \blk00000001/blk000000b9/blk000000bd  (
    .CI(\blk00000001/blk000000b9/sig00000244 ),
    .LI(\blk00000001/blk000000b9/sig0000023b ),
    .O(\blk00000001/blk000000b9/sig00000232 )
  );
  XORCY   \blk00000001/blk000000b9/blk000000bc  (
    .CI(\blk00000001/blk000000b9/sig0000023c ),
    .LI(\blk00000001/blk000000b9/sig00000243 ),
    .O(\blk00000001/sig000000dd )
  );
  GND   \blk00000001/blk000000b9/blk000000bb  (
    .G(\blk00000001/blk000000b9/sig0000023c )
  );
  VCC   \blk00000001/blk000000b9/blk000000ba  (
    .P(\blk00000001/blk000000b9/sig0000023b )
  );
  INV   \blk00000001/blk000000df/blk00000108  (
    .I(\blk00000001/sig0000005e ),
    .O(\blk00000001/blk000000df/sig00000272 )
  );
  INV   \blk00000001/blk000000df/blk00000107  (
    .I(\blk00000001/sig000000fe ),
    .O(\blk00000001/blk000000df/sig0000027c )
  );
  INV   \blk00000001/blk000000df/blk00000106  (
    .I(\blk00000001/sig000000fd ),
    .O(\blk00000001/blk000000df/sig0000027d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000df/blk00000105  (
    .I0(\blk00000001/sig0000005d ),
    .I1(\blk00000001/sig00000049 ),
    .O(\blk00000001/blk000000df/sig00000273 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000df/blk00000104  (
    .I0(\blk00000001/sig0000005c ),
    .I1(\blk00000001/sig00000048 ),
    .O(\blk00000001/blk000000df/sig00000274 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000df/blk00000103  (
    .I0(\blk00000001/sig0000005b ),
    .I1(\blk00000001/sig00000047 ),
    .O(\blk00000001/blk000000df/sig00000275 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000df/blk00000102  (
    .I0(\blk00000001/sig0000005a ),
    .I1(\blk00000001/sig00000046 ),
    .O(\blk00000001/blk000000df/sig00000276 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000df/blk00000101  (
    .I0(\blk00000001/sig00000059 ),
    .I1(\blk00000001/sig00000045 ),
    .O(\blk00000001/blk000000df/sig00000277 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000df/blk00000100  (
    .I0(\blk00000001/sig00000058 ),
    .I1(\blk00000001/sig00000044 ),
    .O(\blk00000001/blk000000df/sig00000278 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000df/blk000000ff  (
    .I0(\blk00000001/sig00000057 ),
    .I1(\blk00000001/sig00000043 ),
    .O(\blk00000001/blk000000df/sig00000279 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000df/blk000000fe  (
    .I0(\blk00000001/sig00000056 ),
    .I1(\blk00000001/sig00000042 ),
    .O(\blk00000001/blk000000df/sig0000027a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000df/blk000000fd  (
    .I0(\blk00000001/sig00000055 ),
    .I1(\blk00000001/sig00000041 ),
    .O(\blk00000001/blk000000df/sig0000027b )
  );
  MUXCY   \blk00000001/blk000000df/blk000000fc  (
    .CI(\blk00000001/blk000000df/sig00000271 ),
    .DI(\blk00000001/sig000000fd ),
    .S(\blk00000001/blk000000df/sig0000027d ),
    .O(\blk00000001/blk000000df/sig0000028a )
  );
  MUXCY   \blk00000001/blk000000df/blk000000fb  (
    .CI(\blk00000001/blk000000df/sig0000028a ),
    .DI(\blk00000001/sig000000fe ),
    .S(\blk00000001/blk000000df/sig0000027c ),
    .O(\blk00000001/blk000000df/sig00000289 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000fa  (
    .CI(\blk00000001/blk000000df/sig00000289 ),
    .DI(\blk00000001/sig00000055 ),
    .S(\blk00000001/blk000000df/sig0000027b ),
    .O(\blk00000001/blk000000df/sig00000288 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f9  (
    .CI(\blk00000001/blk000000df/sig00000288 ),
    .DI(\blk00000001/sig00000056 ),
    .S(\blk00000001/blk000000df/sig0000027a ),
    .O(\blk00000001/blk000000df/sig00000287 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f8  (
    .CI(\blk00000001/blk000000df/sig00000287 ),
    .DI(\blk00000001/sig00000057 ),
    .S(\blk00000001/blk000000df/sig00000279 ),
    .O(\blk00000001/blk000000df/sig00000286 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f7  (
    .CI(\blk00000001/blk000000df/sig00000286 ),
    .DI(\blk00000001/sig00000058 ),
    .S(\blk00000001/blk000000df/sig00000278 ),
    .O(\blk00000001/blk000000df/sig00000285 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f6  (
    .CI(\blk00000001/blk000000df/sig00000285 ),
    .DI(\blk00000001/sig00000059 ),
    .S(\blk00000001/blk000000df/sig00000277 ),
    .O(\blk00000001/blk000000df/sig00000284 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f5  (
    .CI(\blk00000001/blk000000df/sig00000284 ),
    .DI(\blk00000001/sig0000005a ),
    .S(\blk00000001/blk000000df/sig00000276 ),
    .O(\blk00000001/blk000000df/sig00000283 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f4  (
    .CI(\blk00000001/blk000000df/sig00000283 ),
    .DI(\blk00000001/sig0000005b ),
    .S(\blk00000001/blk000000df/sig00000275 ),
    .O(\blk00000001/blk000000df/sig00000282 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f3  (
    .CI(\blk00000001/blk000000df/sig00000282 ),
    .DI(\blk00000001/sig0000005c ),
    .S(\blk00000001/blk000000df/sig00000274 ),
    .O(\blk00000001/blk000000df/sig00000281 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f2  (
    .CI(\blk00000001/blk000000df/sig00000281 ),
    .DI(\blk00000001/sig0000005d ),
    .S(\blk00000001/blk000000df/sig00000273 ),
    .O(\blk00000001/blk000000df/sig00000280 )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f1  (
    .CI(\blk00000001/blk000000df/sig00000280 ),
    .DI(\blk00000001/sig0000005e ),
    .S(\blk00000001/blk000000df/sig00000272 ),
    .O(\blk00000001/blk000000df/sig0000027f )
  );
  MUXCY   \blk00000001/blk000000df/blk000000f0  (
    .CI(\blk00000001/blk000000df/sig0000027f ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk000000df/sig00000270 ),
    .O(\blk00000001/blk000000df/sig0000027e )
  );
  XORCY   \blk00000001/blk000000df/blk000000ef  (
    .CI(\blk00000001/blk000000df/sig0000028a ),
    .LI(\blk00000001/blk000000df/sig0000027c ),
    .O(\blk00000001/sig000000f2 )
  );
  XORCY   \blk00000001/blk000000df/blk000000ee  (
    .CI(\blk00000001/blk000000df/sig00000289 ),
    .LI(\blk00000001/blk000000df/sig0000027b ),
    .O(\blk00000001/sig000000f3 )
  );
  XORCY   \blk00000001/blk000000df/blk000000ed  (
    .CI(\blk00000001/blk000000df/sig00000288 ),
    .LI(\blk00000001/blk000000df/sig0000027a ),
    .O(\blk00000001/sig000000f4 )
  );
  XORCY   \blk00000001/blk000000df/blk000000ec  (
    .CI(\blk00000001/blk000000df/sig00000287 ),
    .LI(\blk00000001/blk000000df/sig00000279 ),
    .O(\blk00000001/sig000000f5 )
  );
  XORCY   \blk00000001/blk000000df/blk000000eb  (
    .CI(\blk00000001/blk000000df/sig00000286 ),
    .LI(\blk00000001/blk000000df/sig00000278 ),
    .O(\blk00000001/sig000000f6 )
  );
  XORCY   \blk00000001/blk000000df/blk000000ea  (
    .CI(\blk00000001/blk000000df/sig00000285 ),
    .LI(\blk00000001/blk000000df/sig00000277 ),
    .O(\blk00000001/sig000000f7 )
  );
  XORCY   \blk00000001/blk000000df/blk000000e9  (
    .CI(\blk00000001/blk000000df/sig00000284 ),
    .LI(\blk00000001/blk000000df/sig00000276 ),
    .O(\blk00000001/sig000000f8 )
  );
  XORCY   \blk00000001/blk000000df/blk000000e8  (
    .CI(\blk00000001/blk000000df/sig00000283 ),
    .LI(\blk00000001/blk000000df/sig00000275 ),
    .O(\blk00000001/sig000000f9 )
  );
  XORCY   \blk00000001/blk000000df/blk000000e7  (
    .CI(\blk00000001/blk000000df/sig00000282 ),
    .LI(\blk00000001/blk000000df/sig00000274 ),
    .O(\blk00000001/sig000000fa )
  );
  XORCY   \blk00000001/blk000000df/blk000000e6  (
    .CI(\blk00000001/blk000000df/sig00000281 ),
    .LI(\blk00000001/blk000000df/sig00000273 ),
    .O(\blk00000001/sig000000fb )
  );
  XORCY   \blk00000001/blk000000df/blk000000e5  (
    .CI(\blk00000001/blk000000df/sig00000280 ),
    .LI(\blk00000001/blk000000df/sig00000272 ),
    .O(\blk00000001/blk000000df/sig00000264 )
  );
  XORCY   \blk00000001/blk000000df/blk000000e4  (
    .CI(\blk00000001/blk000000df/sig0000027f ),
    .LI(\blk00000001/blk000000df/sig00000270 ),
    .O(\blk00000001/sig000000fc )
  );
  XORCY   \blk00000001/blk000000df/blk000000e3  (
    .CI(\blk00000001/blk000000df/sig0000027e ),
    .LI(\blk00000001/blk000000df/sig00000270 ),
    .O(\blk00000001/blk000000df/sig00000262 )
  );
  XORCY   \blk00000001/blk000000df/blk000000e2  (
    .CI(\blk00000001/blk000000df/sig00000271 ),
    .LI(\blk00000001/blk000000df/sig0000027d ),
    .O(\blk00000001/sig000000f1 )
  );
  GND   \blk00000001/blk000000df/blk000000e1  (
    .G(\blk00000001/blk000000df/sig00000271 )
  );
  VCC   \blk00000001/blk000000df/blk000000e0  (
    .P(\blk00000001/blk000000df/sig00000270 )
  );
  INV   \blk00000001/blk0000010b/blk00000122  (
    .I(\blk00000001/sig00000029 ),
    .O(\blk00000001/blk0000010b/sig0000029f )
  );
  INV   \blk00000001/blk0000010b/blk00000121  (
    .I(\blk00000001/sig0000010b ),
    .O(\blk00000001/blk0000010b/sig000002a3 )
  );
  INV   \blk00000001/blk0000010b/blk00000120  (
    .I(\blk00000001/sig0000010a ),
    .O(\blk00000001/blk0000010b/sig000002a4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000010b/blk0000011f  (
    .I0(\blk00000001/sig00000028 ),
    .I1(\blk00000001/sig00000025 ),
    .O(\blk00000001/blk0000010b/sig000002a0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000010b/blk0000011e  (
    .I0(\blk00000001/sig00000027 ),
    .I1(\blk00000001/sig00000024 ),
    .O(\blk00000001/blk0000010b/sig000002a1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000010b/blk0000011d  (
    .I0(\blk00000001/sig00000026 ),
    .I1(\blk00000001/sig00000023 ),
    .O(\blk00000001/blk0000010b/sig000002a2 )
  );
  MUXCY   \blk00000001/blk0000010b/blk0000011c  (
    .CI(\blk00000001/blk0000010b/sig0000029e ),
    .DI(\blk00000001/sig0000010a ),
    .S(\blk00000001/blk0000010b/sig000002a4 ),
    .O(\blk00000001/blk0000010b/sig000002ab )
  );
  MUXCY   \blk00000001/blk0000010b/blk0000011b  (
    .CI(\blk00000001/blk0000010b/sig000002ab ),
    .DI(\blk00000001/sig0000010b ),
    .S(\blk00000001/blk0000010b/sig000002a3 ),
    .O(\blk00000001/blk0000010b/sig000002aa )
  );
  MUXCY   \blk00000001/blk0000010b/blk0000011a  (
    .CI(\blk00000001/blk0000010b/sig000002aa ),
    .DI(\blk00000001/sig00000026 ),
    .S(\blk00000001/blk0000010b/sig000002a2 ),
    .O(\blk00000001/blk0000010b/sig000002a9 )
  );
  MUXCY   \blk00000001/blk0000010b/blk00000119  (
    .CI(\blk00000001/blk0000010b/sig000002a9 ),
    .DI(\blk00000001/sig00000027 ),
    .S(\blk00000001/blk0000010b/sig000002a1 ),
    .O(\blk00000001/blk0000010b/sig000002a8 )
  );
  MUXCY   \blk00000001/blk0000010b/blk00000118  (
    .CI(\blk00000001/blk0000010b/sig000002a8 ),
    .DI(\blk00000001/sig00000028 ),
    .S(\blk00000001/blk0000010b/sig000002a0 ),
    .O(\blk00000001/blk0000010b/sig000002a7 )
  );
  MUXCY   \blk00000001/blk0000010b/blk00000117  (
    .CI(\blk00000001/blk0000010b/sig000002a7 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/blk0000010b/sig0000029f ),
    .O(\blk00000001/blk0000010b/sig000002a6 )
  );
  MUXCY   \blk00000001/blk0000010b/blk00000116  (
    .CI(\blk00000001/blk0000010b/sig000002a6 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk0000010b/sig0000029d ),
    .O(\blk00000001/blk0000010b/sig000002a5 )
  );
  XORCY   \blk00000001/blk0000010b/blk00000115  (
    .CI(\blk00000001/blk0000010b/sig000002ab ),
    .LI(\blk00000001/blk0000010b/sig000002a3 ),
    .O(\blk00000001/sig00000105 )
  );
  XORCY   \blk00000001/blk0000010b/blk00000114  (
    .CI(\blk00000001/blk0000010b/sig000002aa ),
    .LI(\blk00000001/blk0000010b/sig000002a2 ),
    .O(\blk00000001/sig00000106 )
  );
  XORCY   \blk00000001/blk0000010b/blk00000113  (
    .CI(\blk00000001/blk0000010b/sig000002a9 ),
    .LI(\blk00000001/blk0000010b/sig000002a1 ),
    .O(\blk00000001/sig00000107 )
  );
  XORCY   \blk00000001/blk0000010b/blk00000112  (
    .CI(\blk00000001/blk0000010b/sig000002a8 ),
    .LI(\blk00000001/blk0000010b/sig000002a0 ),
    .O(\blk00000001/sig00000108 )
  );
  XORCY   \blk00000001/blk0000010b/blk00000111  (
    .CI(\blk00000001/blk0000010b/sig000002a7 ),
    .LI(\blk00000001/blk0000010b/sig0000029f ),
    .O(\blk00000001/blk0000010b/sig00000297 )
  );
  XORCY   \blk00000001/blk0000010b/blk00000110  (
    .CI(\blk00000001/blk0000010b/sig000002a6 ),
    .LI(\blk00000001/blk0000010b/sig0000029d ),
    .O(\blk00000001/sig00000109 )
  );
  XORCY   \blk00000001/blk0000010b/blk0000010f  (
    .CI(\blk00000001/blk0000010b/sig000002a5 ),
    .LI(\blk00000001/blk0000010b/sig0000029d ),
    .O(\blk00000001/blk0000010b/sig00000295 )
  );
  XORCY   \blk00000001/blk0000010b/blk0000010e  (
    .CI(\blk00000001/blk0000010b/sig0000029e ),
    .LI(\blk00000001/blk0000010b/sig000002a4 ),
    .O(\blk00000001/sig00000104 )
  );
  GND   \blk00000001/blk0000010b/blk0000010d  (
    .G(\blk00000001/blk0000010b/sig0000029e )
  );
  VCC   \blk00000001/blk0000010b/blk0000010c  (
    .P(\blk00000001/blk0000010b/sig0000029d )
  );
  INV   \blk00000001/blk00000123/blk0000014f  (
    .I(\blk00000001/sig000000f0 ),
    .O(\blk00000001/blk00000123/sig000002d5 )
  );
  INV   \blk00000001/blk00000123/blk0000014e  (
    .I(\blk00000001/sig00000126 ),
    .O(\blk00000001/blk00000123/sig000002e0 )
  );
  INV   \blk00000001/blk00000123/blk0000014d  (
    .I(\blk00000001/sig00000125 ),
    .O(\blk00000001/blk00000123/sig000002e1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk0000014c  (
    .I0(\blk00000001/sig00000049 ),
    .I1(\blk00000001/sig000000ef ),
    .O(\blk00000001/blk00000123/sig000002d6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk0000014b  (
    .I0(\blk00000001/sig00000048 ),
    .I1(\blk00000001/sig000000ee ),
    .O(\blk00000001/blk00000123/sig000002d7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk0000014a  (
    .I0(\blk00000001/sig00000047 ),
    .I1(\blk00000001/sig000000ed ),
    .O(\blk00000001/blk00000123/sig000002d8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk00000149  (
    .I0(\blk00000001/sig00000046 ),
    .I1(\blk00000001/sig000000ec ),
    .O(\blk00000001/blk00000123/sig000002d9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk00000148  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig000000eb ),
    .O(\blk00000001/blk00000123/sig000002da )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk00000147  (
    .I0(\blk00000001/sig00000044 ),
    .I1(\blk00000001/sig000000ea ),
    .O(\blk00000001/blk00000123/sig000002db )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk00000146  (
    .I0(\blk00000001/sig00000043 ),
    .I1(\blk00000001/sig000000e9 ),
    .O(\blk00000001/blk00000123/sig000002dc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk00000145  (
    .I0(\blk00000001/sig00000042 ),
    .I1(\blk00000001/sig000000e8 ),
    .O(\blk00000001/blk00000123/sig000002dd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk00000144  (
    .I0(\blk00000001/sig00000041 ),
    .I1(\blk00000001/sig000000e7 ),
    .O(\blk00000001/blk00000123/sig000002de )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000123/blk00000143  (
    .I0(\blk00000001/sig000000fc ),
    .I1(\blk00000001/sig000000e6 ),
    .O(\blk00000001/blk00000123/sig000002df )
  );
  MUXCY   \blk00000001/blk00000123/blk00000142  (
    .CI(\blk00000001/blk00000123/sig000002d4 ),
    .DI(\blk00000001/sig00000125 ),
    .S(\blk00000001/blk00000123/sig000002e1 ),
    .O(\blk00000001/blk00000123/sig000002ef )
  );
  MUXCY   \blk00000001/blk00000123/blk00000141  (
    .CI(\blk00000001/blk00000123/sig000002ef ),
    .DI(\blk00000001/sig00000126 ),
    .S(\blk00000001/blk00000123/sig000002e0 ),
    .O(\blk00000001/blk00000123/sig000002ee )
  );
  MUXCY   \blk00000001/blk00000123/blk00000140  (
    .CI(\blk00000001/blk00000123/sig000002ee ),
    .DI(\blk00000001/sig000000e6 ),
    .S(\blk00000001/blk00000123/sig000002df ),
    .O(\blk00000001/blk00000123/sig000002ed )
  );
  MUXCY   \blk00000001/blk00000123/blk0000013f  (
    .CI(\blk00000001/blk00000123/sig000002ed ),
    .DI(\blk00000001/sig000000e7 ),
    .S(\blk00000001/blk00000123/sig000002de ),
    .O(\blk00000001/blk00000123/sig000002ec )
  );
  MUXCY   \blk00000001/blk00000123/blk0000013e  (
    .CI(\blk00000001/blk00000123/sig000002ec ),
    .DI(\blk00000001/sig000000e8 ),
    .S(\blk00000001/blk00000123/sig000002dd ),
    .O(\blk00000001/blk00000123/sig000002eb )
  );
  MUXCY   \blk00000001/blk00000123/blk0000013d  (
    .CI(\blk00000001/blk00000123/sig000002eb ),
    .DI(\blk00000001/sig000000e9 ),
    .S(\blk00000001/blk00000123/sig000002dc ),
    .O(\blk00000001/blk00000123/sig000002ea )
  );
  MUXCY   \blk00000001/blk00000123/blk0000013c  (
    .CI(\blk00000001/blk00000123/sig000002ea ),
    .DI(\blk00000001/sig000000ea ),
    .S(\blk00000001/blk00000123/sig000002db ),
    .O(\blk00000001/blk00000123/sig000002e9 )
  );
  MUXCY   \blk00000001/blk00000123/blk0000013b  (
    .CI(\blk00000001/blk00000123/sig000002e9 ),
    .DI(\blk00000001/sig000000eb ),
    .S(\blk00000001/blk00000123/sig000002da ),
    .O(\blk00000001/blk00000123/sig000002e8 )
  );
  MUXCY   \blk00000001/blk00000123/blk0000013a  (
    .CI(\blk00000001/blk00000123/sig000002e8 ),
    .DI(\blk00000001/sig000000ec ),
    .S(\blk00000001/blk00000123/sig000002d9 ),
    .O(\blk00000001/blk00000123/sig000002e7 )
  );
  MUXCY   \blk00000001/blk00000123/blk00000139  (
    .CI(\blk00000001/blk00000123/sig000002e7 ),
    .DI(\blk00000001/sig000000ed ),
    .S(\blk00000001/blk00000123/sig000002d8 ),
    .O(\blk00000001/blk00000123/sig000002e6 )
  );
  MUXCY   \blk00000001/blk00000123/blk00000138  (
    .CI(\blk00000001/blk00000123/sig000002e6 ),
    .DI(\blk00000001/sig000000ee ),
    .S(\blk00000001/blk00000123/sig000002d7 ),
    .O(\blk00000001/blk00000123/sig000002e5 )
  );
  MUXCY   \blk00000001/blk00000123/blk00000137  (
    .CI(\blk00000001/blk00000123/sig000002e5 ),
    .DI(\blk00000001/sig000000ef ),
    .S(\blk00000001/blk00000123/sig000002d6 ),
    .O(\blk00000001/blk00000123/sig000002e4 )
  );
  MUXCY   \blk00000001/blk00000123/blk00000136  (
    .CI(\blk00000001/blk00000123/sig000002e4 ),
    .DI(\blk00000001/sig000000f0 ),
    .S(\blk00000001/blk00000123/sig000002d5 ),
    .O(\blk00000001/blk00000123/sig000002e3 )
  );
  MUXCY   \blk00000001/blk00000123/blk00000135  (
    .CI(\blk00000001/blk00000123/sig000002e3 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk00000123/sig000002d3 ),
    .O(\blk00000001/blk00000123/sig000002e2 )
  );
  XORCY   \blk00000001/blk00000123/blk00000134  (
    .CI(\blk00000001/blk00000123/sig000002ef ),
    .LI(\blk00000001/blk00000123/sig000002e0 ),
    .O(\blk00000001/sig00000119 )
  );
  XORCY   \blk00000001/blk00000123/blk00000133  (
    .CI(\blk00000001/blk00000123/sig000002ee ),
    .LI(\blk00000001/blk00000123/sig000002df ),
    .O(\blk00000001/sig0000011a )
  );
  XORCY   \blk00000001/blk00000123/blk00000132  (
    .CI(\blk00000001/blk00000123/sig000002ed ),
    .LI(\blk00000001/blk00000123/sig000002de ),
    .O(\blk00000001/sig0000011b )
  );
  XORCY   \blk00000001/blk00000123/blk00000131  (
    .CI(\blk00000001/blk00000123/sig000002ec ),
    .LI(\blk00000001/blk00000123/sig000002dd ),
    .O(\blk00000001/sig0000011c )
  );
  XORCY   \blk00000001/blk00000123/blk00000130  (
    .CI(\blk00000001/blk00000123/sig000002eb ),
    .LI(\blk00000001/blk00000123/sig000002dc ),
    .O(\blk00000001/sig0000011d )
  );
  XORCY   \blk00000001/blk00000123/blk0000012f  (
    .CI(\blk00000001/blk00000123/sig000002ea ),
    .LI(\blk00000001/blk00000123/sig000002db ),
    .O(\blk00000001/sig0000011e )
  );
  XORCY   \blk00000001/blk00000123/blk0000012e  (
    .CI(\blk00000001/blk00000123/sig000002e9 ),
    .LI(\blk00000001/blk00000123/sig000002da ),
    .O(\blk00000001/sig0000011f )
  );
  XORCY   \blk00000001/blk00000123/blk0000012d  (
    .CI(\blk00000001/blk00000123/sig000002e8 ),
    .LI(\blk00000001/blk00000123/sig000002d9 ),
    .O(\blk00000001/sig00000120 )
  );
  XORCY   \blk00000001/blk00000123/blk0000012c  (
    .CI(\blk00000001/blk00000123/sig000002e7 ),
    .LI(\blk00000001/blk00000123/sig000002d8 ),
    .O(\blk00000001/sig00000121 )
  );
  XORCY   \blk00000001/blk00000123/blk0000012b  (
    .CI(\blk00000001/blk00000123/sig000002e6 ),
    .LI(\blk00000001/blk00000123/sig000002d7 ),
    .O(\blk00000001/sig00000122 )
  );
  XORCY   \blk00000001/blk00000123/blk0000012a  (
    .CI(\blk00000001/blk00000123/sig000002e5 ),
    .LI(\blk00000001/blk00000123/sig000002d6 ),
    .O(\blk00000001/sig00000123 )
  );
  XORCY   \blk00000001/blk00000123/blk00000129  (
    .CI(\blk00000001/blk00000123/sig000002e4 ),
    .LI(\blk00000001/blk00000123/sig000002d5 ),
    .O(\blk00000001/blk00000123/sig000002c6 )
  );
  XORCY   \blk00000001/blk00000123/blk00000128  (
    .CI(\blk00000001/blk00000123/sig000002e3 ),
    .LI(\blk00000001/blk00000123/sig000002d3 ),
    .O(\blk00000001/sig00000124 )
  );
  XORCY   \blk00000001/blk00000123/blk00000127  (
    .CI(\blk00000001/blk00000123/sig000002e2 ),
    .LI(\blk00000001/blk00000123/sig000002d3 ),
    .O(\blk00000001/blk00000123/sig000002c4 )
  );
  XORCY   \blk00000001/blk00000123/blk00000126  (
    .CI(\blk00000001/blk00000123/sig000002d4 ),
    .LI(\blk00000001/blk00000123/sig000002e1 ),
    .O(\blk00000001/sig00000118 )
  );
  GND   \blk00000001/blk00000123/blk00000125  (
    .G(\blk00000001/blk00000123/sig000002d4 )
  );
  VCC   \blk00000001/blk00000123/blk00000124  (
    .P(\blk00000001/blk00000123/sig000002d3 )
  );
  INV   \blk00000001/blk00000167/blk0000017a  (
    .I(s_axis_cartesian_tdata[17]),
    .O(\blk00000001/blk00000167/sig00000303 )
  );
  INV   \blk00000001/blk00000167/blk00000179  (
    .I(s_axis_cartesian_tdata[16]),
    .O(\blk00000001/blk00000167/sig00000304 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000167/blk00000178  (
    .I0(\blk00000001/sig00000011 ),
    .I1(\blk00000001/sig00000015 ),
    .O(\blk00000001/blk00000167/sig00000301 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000167/blk00000177  (
    .I0(\blk00000001/sig00000012 ),
    .I1(\blk00000001/sig00000014 ),
    .O(\blk00000001/blk00000167/sig00000302 )
  );
  MUXCY   \blk00000001/blk00000167/blk00000176  (
    .CI(\blk00000001/blk00000167/sig00000300 ),
    .DI(s_axis_cartesian_tdata[16]),
    .S(\blk00000001/blk00000167/sig00000304 ),
    .O(\blk00000001/blk00000167/sig0000030a )
  );
  MUXCY   \blk00000001/blk00000167/blk00000175  (
    .CI(\blk00000001/blk00000167/sig0000030a ),
    .DI(s_axis_cartesian_tdata[17]),
    .S(\blk00000001/blk00000167/sig00000303 ),
    .O(\blk00000001/blk00000167/sig00000309 )
  );
  MUXCY   \blk00000001/blk00000167/blk00000174  (
    .CI(\blk00000001/blk00000167/sig00000309 ),
    .DI(\blk00000001/sig00000012 ),
    .S(\blk00000001/blk00000167/sig00000302 ),
    .O(\blk00000001/blk00000167/sig00000308 )
  );
  MUXCY   \blk00000001/blk00000167/blk00000173  (
    .CI(\blk00000001/blk00000167/sig00000308 ),
    .DI(\blk00000001/sig00000011 ),
    .S(\blk00000001/blk00000167/sig00000301 ),
    .O(\blk00000001/blk00000167/sig00000307 )
  );
  MUXCY   \blk00000001/blk00000167/blk00000172  (
    .CI(\blk00000001/blk00000167/sig00000307 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk00000167/sig000002ff ),
    .O(\blk00000001/blk00000167/sig00000306 )
  );
  MUXCY   \blk00000001/blk00000167/blk00000171  (
    .CI(\blk00000001/blk00000167/sig00000306 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk00000167/sig000002ff ),
    .O(\blk00000001/blk00000167/sig00000305 )
  );
  XORCY   \blk00000001/blk00000167/blk00000170  (
    .CI(\blk00000001/blk00000167/sig0000030a ),
    .LI(\blk00000001/blk00000167/sig00000303 ),
    .O(\blk00000001/sig0000012c )
  );
  XORCY   \blk00000001/blk00000167/blk0000016f  (
    .CI(\blk00000001/blk00000167/sig00000309 ),
    .LI(\blk00000001/blk00000167/sig00000302 ),
    .O(\blk00000001/sig0000012d )
  );
  XORCY   \blk00000001/blk00000167/blk0000016e  (
    .CI(\blk00000001/blk00000167/sig00000308 ),
    .LI(\blk00000001/blk00000167/sig00000301 ),
    .O(\blk00000001/sig0000012e )
  );
  XORCY   \blk00000001/blk00000167/blk0000016d  (
    .CI(\blk00000001/blk00000167/sig00000307 ),
    .LI(\blk00000001/blk00000167/sig000002ff ),
    .O(\blk00000001/blk00000167/sig000002fa )
  );
  XORCY   \blk00000001/blk00000167/blk0000016c  (
    .CI(\blk00000001/blk00000167/sig00000306 ),
    .LI(\blk00000001/blk00000167/sig000002ff ),
    .O(\blk00000001/sig0000012f )
  );
  XORCY   \blk00000001/blk00000167/blk0000016b  (
    .CI(\blk00000001/blk00000167/sig00000305 ),
    .LI(\blk00000001/blk00000167/sig000002ff ),
    .O(\blk00000001/blk00000167/sig000002f8 )
  );
  XORCY   \blk00000001/blk00000167/blk0000016a  (
    .CI(\blk00000001/blk00000167/sig00000300 ),
    .LI(\blk00000001/blk00000167/sig00000304 ),
    .O(\blk00000001/sig0000012b )
  );
  GND   \blk00000001/blk00000167/blk00000169  (
    .G(\blk00000001/blk00000167/sig00000300 )
  );
  VCC   \blk00000001/blk00000167/blk00000168  (
    .P(\blk00000001/blk00000167/sig000002ff )
  );
  INV   \blk00000001/blk00000182/blk000001af  (
    .I(\blk00000001/sig00000040 ),
    .O(\blk00000001/blk00000182/sig00000337 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001ae  (
    .I0(\blk00000001/sig0000003f ),
    .I1(\blk00000001/sig00000034 ),
    .O(\blk00000001/blk00000182/sig00000338 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001ad  (
    .I0(\blk00000001/sig0000003e ),
    .I1(\blk00000001/sig00000033 ),
    .O(\blk00000001/blk00000182/sig00000339 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001ac  (
    .I0(\blk00000001/sig0000003d ),
    .I1(\blk00000001/sig00000032 ),
    .O(\blk00000001/blk00000182/sig0000033a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001ab  (
    .I0(\blk00000001/sig0000003c ),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/blk00000182/sig0000033b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001aa  (
    .I0(\blk00000001/sig0000003b ),
    .I1(\blk00000001/sig00000030 ),
    .O(\blk00000001/blk00000182/sig0000033c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001a9  (
    .I0(\blk00000001/sig0000003a ),
    .I1(\blk00000001/sig0000002f ),
    .O(\blk00000001/blk00000182/sig0000033d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001a8  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig0000002e ),
    .O(\blk00000001/blk00000182/sig0000033e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001a7  (
    .I0(\blk00000001/sig00000038 ),
    .I1(\blk00000001/sig0000002d ),
    .O(\blk00000001/blk00000182/sig0000033f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001a6  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig0000002c ),
    .O(\blk00000001/blk00000182/sig00000340 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001a5  (
    .I0(\blk00000001/sig00000036 ),
    .I1(\blk00000001/sig0000002b ),
    .O(\blk00000001/blk00000182/sig00000341 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000182/blk000001a4  (
    .I0(\blk00000001/sig00000035 ),
    .I1(\blk00000001/sig0000002a ),
    .O(\blk00000001/blk00000182/sig00000342 )
  );
  MUXCY   \blk00000001/blk00000182/blk000001a3  (
    .CI(\blk00000001/blk00000182/sig00000336 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk00000182/sig00000335 ),
    .O(\blk00000001/blk00000182/sig00000351 )
  );
  MUXCY   \blk00000001/blk00000182/blk000001a2  (
    .CI(\blk00000001/blk00000182/sig00000351 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk00000182/sig00000335 ),
    .O(\blk00000001/blk00000182/sig00000350 )
  );
  MUXCY   \blk00000001/blk00000182/blk000001a1  (
    .CI(\blk00000001/blk00000182/sig00000350 ),
    .DI(\blk00000001/sig00000035 ),
    .S(\blk00000001/blk00000182/sig00000342 ),
    .O(\blk00000001/blk00000182/sig0000034f )
  );
  MUXCY   \blk00000001/blk00000182/blk000001a0  (
    .CI(\blk00000001/blk00000182/sig0000034f ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/blk00000182/sig00000341 ),
    .O(\blk00000001/blk00000182/sig0000034e )
  );
  MUXCY   \blk00000001/blk00000182/blk0000019f  (
    .CI(\blk00000001/blk00000182/sig0000034e ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/blk00000182/sig00000340 ),
    .O(\blk00000001/blk00000182/sig0000034d )
  );
  MUXCY   \blk00000001/blk00000182/blk0000019e  (
    .CI(\blk00000001/blk00000182/sig0000034d ),
    .DI(\blk00000001/sig00000038 ),
    .S(\blk00000001/blk00000182/sig0000033f ),
    .O(\blk00000001/blk00000182/sig0000034c )
  );
  MUXCY   \blk00000001/blk00000182/blk0000019d  (
    .CI(\blk00000001/blk00000182/sig0000034c ),
    .DI(\blk00000001/sig00000039 ),
    .S(\blk00000001/blk00000182/sig0000033e ),
    .O(\blk00000001/blk00000182/sig0000034b )
  );
  MUXCY   \blk00000001/blk00000182/blk0000019c  (
    .CI(\blk00000001/blk00000182/sig0000034b ),
    .DI(\blk00000001/sig0000003a ),
    .S(\blk00000001/blk00000182/sig0000033d ),
    .O(\blk00000001/blk00000182/sig0000034a )
  );
  MUXCY   \blk00000001/blk00000182/blk0000019b  (
    .CI(\blk00000001/blk00000182/sig0000034a ),
    .DI(\blk00000001/sig0000003b ),
    .S(\blk00000001/blk00000182/sig0000033c ),
    .O(\blk00000001/blk00000182/sig00000349 )
  );
  MUXCY   \blk00000001/blk00000182/blk0000019a  (
    .CI(\blk00000001/blk00000182/sig00000349 ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/blk00000182/sig0000033b ),
    .O(\blk00000001/blk00000182/sig00000348 )
  );
  MUXCY   \blk00000001/blk00000182/blk00000199  (
    .CI(\blk00000001/blk00000182/sig00000348 ),
    .DI(\blk00000001/sig0000003d ),
    .S(\blk00000001/blk00000182/sig0000033a ),
    .O(\blk00000001/blk00000182/sig00000347 )
  );
  MUXCY   \blk00000001/blk00000182/blk00000198  (
    .CI(\blk00000001/blk00000182/sig00000347 ),
    .DI(\blk00000001/sig0000003e ),
    .S(\blk00000001/blk00000182/sig00000339 ),
    .O(\blk00000001/blk00000182/sig00000346 )
  );
  MUXCY   \blk00000001/blk00000182/blk00000197  (
    .CI(\blk00000001/blk00000182/sig00000346 ),
    .DI(\blk00000001/sig0000003f ),
    .S(\blk00000001/blk00000182/sig00000338 ),
    .O(\blk00000001/blk00000182/sig00000345 )
  );
  MUXCY   \blk00000001/blk00000182/blk00000196  (
    .CI(\blk00000001/blk00000182/sig00000345 ),
    .DI(\blk00000001/sig00000040 ),
    .S(\blk00000001/blk00000182/sig00000337 ),
    .O(\blk00000001/blk00000182/sig00000344 )
  );
  MUXCY   \blk00000001/blk00000182/blk00000195  (
    .CI(\blk00000001/blk00000182/sig00000344 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk00000182/sig00000335 ),
    .O(\blk00000001/blk00000182/sig00000343 )
  );
  XORCY   \blk00000001/blk00000182/blk00000194  (
    .CI(\blk00000001/blk00000182/sig00000351 ),
    .LI(\blk00000001/blk00000182/sig00000335 ),
    .O(\blk00000001/sig00000141 )
  );
  XORCY   \blk00000001/blk00000182/blk00000193  (
    .CI(\blk00000001/blk00000182/sig00000350 ),
    .LI(\blk00000001/blk00000182/sig00000342 ),
    .O(\blk00000001/sig00000142 )
  );
  XORCY   \blk00000001/blk00000182/blk00000192  (
    .CI(\blk00000001/blk00000182/sig0000034f ),
    .LI(\blk00000001/blk00000182/sig00000341 ),
    .O(\blk00000001/sig00000143 )
  );
  XORCY   \blk00000001/blk00000182/blk00000191  (
    .CI(\blk00000001/blk00000182/sig0000034e ),
    .LI(\blk00000001/blk00000182/sig00000340 ),
    .O(\blk00000001/sig00000144 )
  );
  XORCY   \blk00000001/blk00000182/blk00000190  (
    .CI(\blk00000001/blk00000182/sig0000034d ),
    .LI(\blk00000001/blk00000182/sig0000033f ),
    .O(\blk00000001/sig00000145 )
  );
  XORCY   \blk00000001/blk00000182/blk0000018f  (
    .CI(\blk00000001/blk00000182/sig0000034c ),
    .LI(\blk00000001/blk00000182/sig0000033e ),
    .O(\blk00000001/sig00000146 )
  );
  XORCY   \blk00000001/blk00000182/blk0000018e  (
    .CI(\blk00000001/blk00000182/sig0000034b ),
    .LI(\blk00000001/blk00000182/sig0000033d ),
    .O(\blk00000001/sig00000147 )
  );
  XORCY   \blk00000001/blk00000182/blk0000018d  (
    .CI(\blk00000001/blk00000182/sig0000034a ),
    .LI(\blk00000001/blk00000182/sig0000033c ),
    .O(\blk00000001/sig00000148 )
  );
  XORCY   \blk00000001/blk00000182/blk0000018c  (
    .CI(\blk00000001/blk00000182/sig00000349 ),
    .LI(\blk00000001/blk00000182/sig0000033b ),
    .O(\blk00000001/sig00000149 )
  );
  XORCY   \blk00000001/blk00000182/blk0000018b  (
    .CI(\blk00000001/blk00000182/sig00000348 ),
    .LI(\blk00000001/blk00000182/sig0000033a ),
    .O(\blk00000001/sig0000014a )
  );
  XORCY   \blk00000001/blk00000182/blk0000018a  (
    .CI(\blk00000001/blk00000182/sig00000347 ),
    .LI(\blk00000001/blk00000182/sig00000339 ),
    .O(\blk00000001/sig0000014b )
  );
  XORCY   \blk00000001/blk00000182/blk00000189  (
    .CI(\blk00000001/blk00000182/sig00000346 ),
    .LI(\blk00000001/blk00000182/sig00000338 ),
    .O(\blk00000001/sig0000014c )
  );
  XORCY   \blk00000001/blk00000182/blk00000188  (
    .CI(\blk00000001/blk00000182/sig00000345 ),
    .LI(\blk00000001/blk00000182/sig00000337 ),
    .O(\blk00000001/blk00000182/sig00000327 )
  );
  XORCY   \blk00000001/blk00000182/blk00000187  (
    .CI(\blk00000001/blk00000182/sig00000344 ),
    .LI(\blk00000001/blk00000182/sig00000335 ),
    .O(\blk00000001/sig0000014d )
  );
  XORCY   \blk00000001/blk00000182/blk00000186  (
    .CI(\blk00000001/blk00000182/sig00000343 ),
    .LI(\blk00000001/blk00000182/sig00000335 ),
    .O(\blk00000001/blk00000182/sig00000325 )
  );
  XORCY   \blk00000001/blk00000182/blk00000185  (
    .CI(\blk00000001/blk00000182/sig00000336 ),
    .LI(\blk00000001/blk00000182/sig00000335 ),
    .O(\blk00000001/sig00000140 )
  );
  GND   \blk00000001/blk00000182/blk00000184  (
    .G(\blk00000001/blk00000182/sig00000336 )
  );
  VCC   \blk00000001/blk00000182/blk00000183  (
    .P(\blk00000001/blk00000182/sig00000335 )
  );
  INV   \blk00000001/blk000001b0/blk000001e0  (
    .I(\blk00000001/sig0000013e ),
    .O(\blk00000001/blk000001b0/sig00000381 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001df  (
    .I0(\blk00000001/sig0000013d ),
    .I1(\blk00000001/sig00000034 ),
    .O(\blk00000001/blk000001b0/sig00000382 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001de  (
    .I0(\blk00000001/sig0000013c ),
    .I1(\blk00000001/sig00000033 ),
    .O(\blk00000001/blk000001b0/sig00000383 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001dd  (
    .I0(\blk00000001/sig0000013b ),
    .I1(\blk00000001/sig00000032 ),
    .O(\blk00000001/blk000001b0/sig00000384 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001dc  (
    .I0(\blk00000001/sig00000031 ),
    .I1(\blk00000001/sig0000013a ),
    .O(\blk00000001/blk000001b0/sig00000385 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001db  (
    .I0(\blk00000001/sig00000030 ),
    .I1(\blk00000001/sig00000139 ),
    .O(\blk00000001/blk000001b0/sig00000386 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001da  (
    .I0(\blk00000001/sig0000002f ),
    .I1(\blk00000001/sig00000138 ),
    .O(\blk00000001/blk000001b0/sig00000387 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001d9  (
    .I0(\blk00000001/sig0000002e ),
    .I1(\blk00000001/sig00000137 ),
    .O(\blk00000001/blk000001b0/sig00000388 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001d8  (
    .I0(\blk00000001/sig0000002d ),
    .I1(\blk00000001/sig00000136 ),
    .O(\blk00000001/blk000001b0/sig00000389 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001d7  (
    .I0(\blk00000001/sig0000002c ),
    .I1(\blk00000001/sig00000135 ),
    .O(\blk00000001/blk000001b0/sig0000038a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001d6  (
    .I0(\blk00000001/sig0000002b ),
    .I1(\blk00000001/sig00000134 ),
    .O(\blk00000001/blk000001b0/sig0000038b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001d5  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig00000133 ),
    .O(\blk00000001/blk000001b0/sig0000038c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000001b0/blk000001d4  (
    .I0(\blk00000001/sig0000014d ),
    .I1(\blk00000001/sig00000132 ),
    .O(\blk00000001/blk000001b0/sig0000038d )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001d3  (
    .CI(\blk00000001/blk000001b0/sig00000380 ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk000001b0/sig0000037f ),
    .O(\blk00000001/blk000001b0/sig0000039d )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001d2  (
    .CI(\blk00000001/blk000001b0/sig0000039d ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk000001b0/sig0000037f ),
    .O(\blk00000001/blk000001b0/sig0000039c )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001d1  (
    .CI(\blk00000001/blk000001b0/sig0000039c ),
    .DI(\blk00000001/sig00000132 ),
    .S(\blk00000001/blk000001b0/sig0000038d ),
    .O(\blk00000001/blk000001b0/sig0000039b )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001d0  (
    .CI(\blk00000001/blk000001b0/sig0000039b ),
    .DI(\blk00000001/sig00000133 ),
    .S(\blk00000001/blk000001b0/sig0000038c ),
    .O(\blk00000001/blk000001b0/sig0000039a )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001cf  (
    .CI(\blk00000001/blk000001b0/sig0000039a ),
    .DI(\blk00000001/sig00000134 ),
    .S(\blk00000001/blk000001b0/sig0000038b ),
    .O(\blk00000001/blk000001b0/sig00000399 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001ce  (
    .CI(\blk00000001/blk000001b0/sig00000399 ),
    .DI(\blk00000001/sig00000135 ),
    .S(\blk00000001/blk000001b0/sig0000038a ),
    .O(\blk00000001/blk000001b0/sig00000398 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001cd  (
    .CI(\blk00000001/blk000001b0/sig00000398 ),
    .DI(\blk00000001/sig00000136 ),
    .S(\blk00000001/blk000001b0/sig00000389 ),
    .O(\blk00000001/blk000001b0/sig00000397 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001cc  (
    .CI(\blk00000001/blk000001b0/sig00000397 ),
    .DI(\blk00000001/sig00000137 ),
    .S(\blk00000001/blk000001b0/sig00000388 ),
    .O(\blk00000001/blk000001b0/sig00000396 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001cb  (
    .CI(\blk00000001/blk000001b0/sig00000396 ),
    .DI(\blk00000001/sig00000138 ),
    .S(\blk00000001/blk000001b0/sig00000387 ),
    .O(\blk00000001/blk000001b0/sig00000395 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001ca  (
    .CI(\blk00000001/blk000001b0/sig00000395 ),
    .DI(\blk00000001/sig00000139 ),
    .S(\blk00000001/blk000001b0/sig00000386 ),
    .O(\blk00000001/blk000001b0/sig00000394 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001c9  (
    .CI(\blk00000001/blk000001b0/sig00000394 ),
    .DI(\blk00000001/sig0000013a ),
    .S(\blk00000001/blk000001b0/sig00000385 ),
    .O(\blk00000001/blk000001b0/sig00000393 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001c8  (
    .CI(\blk00000001/blk000001b0/sig00000393 ),
    .DI(\blk00000001/sig0000013b ),
    .S(\blk00000001/blk000001b0/sig00000384 ),
    .O(\blk00000001/blk000001b0/sig00000392 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001c7  (
    .CI(\blk00000001/blk000001b0/sig00000392 ),
    .DI(\blk00000001/sig0000013c ),
    .S(\blk00000001/blk000001b0/sig00000383 ),
    .O(\blk00000001/blk000001b0/sig00000391 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001c6  (
    .CI(\blk00000001/blk000001b0/sig00000391 ),
    .DI(\blk00000001/sig0000013d ),
    .S(\blk00000001/blk000001b0/sig00000382 ),
    .O(\blk00000001/blk000001b0/sig00000390 )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001c5  (
    .CI(\blk00000001/blk000001b0/sig00000390 ),
    .DI(\blk00000001/sig0000013e ),
    .S(\blk00000001/blk000001b0/sig00000381 ),
    .O(\blk00000001/blk000001b0/sig0000038f )
  );
  MUXCY   \blk00000001/blk000001b0/blk000001c4  (
    .CI(\blk00000001/blk000001b0/sig0000038f ),
    .DI(\blk00000001/sig0000013f ),
    .S(\blk00000001/blk000001b0/sig0000037f ),
    .O(\blk00000001/blk000001b0/sig0000038e )
  );
  XORCY   \blk00000001/blk000001b0/blk000001c3  (
    .CI(\blk00000001/blk000001b0/sig0000039d ),
    .LI(\blk00000001/blk000001b0/sig0000037f ),
    .O(\blk00000001/blk000001b0/sig0000037d )
  );
  XORCY   \blk00000001/blk000001b0/blk000001c2  (
    .CI(\blk00000001/blk000001b0/sig0000039c ),
    .LI(\blk00000001/blk000001b0/sig0000038d ),
    .O(\blk00000001/blk000001b0/sig0000037c )
  );
  XORCY   \blk00000001/blk000001b0/blk000001c1  (
    .CI(\blk00000001/blk000001b0/sig0000039b ),
    .LI(\blk00000001/blk000001b0/sig0000038c ),
    .O(\blk00000001/blk000001b0/sig0000037b )
  );
  XORCY   \blk00000001/blk000001b0/blk000001c0  (
    .CI(\blk00000001/blk000001b0/sig0000039a ),
    .LI(\blk00000001/blk000001b0/sig0000038b ),
    .O(\blk00000001/blk000001b0/sig0000037a )
  );
  XORCY   \blk00000001/blk000001b0/blk000001bf  (
    .CI(\blk00000001/blk000001b0/sig00000399 ),
    .LI(\blk00000001/blk000001b0/sig0000038a ),
    .O(\blk00000001/blk000001b0/sig00000379 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001be  (
    .CI(\blk00000001/blk000001b0/sig00000398 ),
    .LI(\blk00000001/blk000001b0/sig00000389 ),
    .O(\blk00000001/blk000001b0/sig00000378 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001bd  (
    .CI(\blk00000001/blk000001b0/sig00000397 ),
    .LI(\blk00000001/blk000001b0/sig00000388 ),
    .O(\blk00000001/blk000001b0/sig00000377 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001bc  (
    .CI(\blk00000001/blk000001b0/sig00000396 ),
    .LI(\blk00000001/blk000001b0/sig00000387 ),
    .O(\blk00000001/blk000001b0/sig00000376 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001bb  (
    .CI(\blk00000001/blk000001b0/sig00000395 ),
    .LI(\blk00000001/blk000001b0/sig00000386 ),
    .O(\blk00000001/blk000001b0/sig00000375 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001ba  (
    .CI(\blk00000001/blk000001b0/sig00000394 ),
    .LI(\blk00000001/blk000001b0/sig00000385 ),
    .O(\blk00000001/blk000001b0/sig00000374 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001b9  (
    .CI(\blk00000001/blk000001b0/sig00000393 ),
    .LI(\blk00000001/blk000001b0/sig00000384 ),
    .O(\blk00000001/blk000001b0/sig00000373 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001b8  (
    .CI(\blk00000001/blk000001b0/sig00000392 ),
    .LI(\blk00000001/blk000001b0/sig00000383 ),
    .O(\blk00000001/blk000001b0/sig00000372 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001b7  (
    .CI(\blk00000001/blk000001b0/sig00000391 ),
    .LI(\blk00000001/blk000001b0/sig00000382 ),
    .O(\blk00000001/blk000001b0/sig00000371 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001b6  (
    .CI(\blk00000001/blk000001b0/sig00000390 ),
    .LI(\blk00000001/blk000001b0/sig00000381 ),
    .O(\blk00000001/blk000001b0/sig00000370 )
  );
  XORCY   \blk00000001/blk000001b0/blk000001b5  (
    .CI(\blk00000001/blk000001b0/sig0000038f ),
    .LI(\blk00000001/blk000001b0/sig0000037f ),
    .O(\blk00000001/sig0000014e )
  );
  XORCY   \blk00000001/blk000001b0/blk000001b4  (
    .CI(\blk00000001/blk000001b0/sig0000038e ),
    .LI(\blk00000001/blk000001b0/sig0000037f ),
    .O(\blk00000001/blk000001b0/sig0000036e )
  );
  XORCY   \blk00000001/blk000001b0/blk000001b3  (
    .CI(\blk00000001/blk000001b0/sig00000380 ),
    .LI(\blk00000001/blk000001b0/sig0000037f ),
    .O(\blk00000001/blk000001b0/sig0000037e )
  );
  GND   \blk00000001/blk000001b0/blk000001b2  (
    .G(\blk00000001/blk000001b0/sig00000380 )
  );
  VCC   \blk00000001/blk000001b0/blk000001b1  (
    .P(\blk00000001/blk000001b0/sig0000037f )
  );
  INV   \blk00000001/blk000001ee/blk00000224  (
    .I(\blk00000001/sig00000021 ),
    .O(\blk00000001/blk000001ee/sig000003df )
  );
  INV   \blk00000001/blk000001ee/blk00000223  (
    .I(\blk00000001/sig00000021 ),
    .O(\blk00000001/blk000001ee/sig000003c6 )
  );
  INV   \blk00000001/blk000001ee/blk00000222  (
    .I(\blk00000001/sig00000020 ),
    .O(\blk00000001/blk000001ee/sig000003c7 )
  );
  INV   \blk00000001/blk000001ee/blk00000221  (
    .I(\blk00000001/sig0000001f ),
    .O(\blk00000001/blk000001ee/sig000003c8 )
  );
  INV   \blk00000001/blk000001ee/blk00000220  (
    .I(\blk00000001/sig0000001e ),
    .O(\blk00000001/blk000001ee/sig000003c9 )
  );
  INV   \blk00000001/blk000001ee/blk0000021f  (
    .I(\blk00000001/sig0000001d ),
    .O(\blk00000001/blk000001ee/sig000003ca )
  );
  INV   \blk00000001/blk000001ee/blk0000021e  (
    .I(\blk00000001/sig0000001c ),
    .O(\blk00000001/blk000001ee/sig000003cb )
  );
  INV   \blk00000001/blk000001ee/blk0000021d  (
    .I(\blk00000001/sig0000001b ),
    .O(\blk00000001/blk000001ee/sig000003cc )
  );
  INV   \blk00000001/blk000001ee/blk0000021c  (
    .I(\blk00000001/sig0000001a ),
    .O(\blk00000001/blk000001ee/sig000003cd )
  );
  INV   \blk00000001/blk000001ee/blk0000021b  (
    .I(\blk00000001/sig00000019 ),
    .O(\blk00000001/blk000001ee/sig000003ce )
  );
  INV   \blk00000001/blk000001ee/blk0000021a  (
    .I(\blk00000001/sig00000018 ),
    .O(\blk00000001/blk000001ee/sig000003cf )
  );
  INV   \blk00000001/blk000001ee/blk00000219  (
    .I(\blk00000001/sig00000022 ),
    .O(\blk00000001/blk000001ee/sig000003d0 )
  );
  INV   \blk00000001/blk000001ee/blk00000218  (
    .I(\blk00000001/sig00000017 ),
    .O(\blk00000001/blk000001ee/sig000003d1 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk000001ee/blk00000217  (
    .I0(\blk00000001/sig00000016 ),
    .O(\blk00000001/blk000001ee/sig000003e0 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk00000216  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003c5 ),
    .Q(m_axis_dout_tdata[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk00000215  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003c4 ),
    .Q(m_axis_dout_tdata[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk00000214  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003c3 ),
    .Q(m_axis_dout_tdata[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk00000213  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003c2 ),
    .Q(m_axis_dout_tdata[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk00000212  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003c1 ),
    .Q(m_axis_dout_tdata[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk00000211  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003c0 ),
    .Q(m_axis_dout_tdata[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk00000210  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003bf ),
    .Q(m_axis_dout_tdata[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk0000020f  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003be ),
    .Q(m_axis_dout_tdata[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk0000020e  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003bd ),
    .Q(m_axis_dout_tdata[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk0000020d  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003bc ),
    .Q(m_axis_dout_tdata[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001ee/blk0000020c  (
    .C(aclk),
    .CE(\blk00000001/sig0000006e ),
    .D(\blk00000001/blk000001ee/sig000003bb ),
    .Q(NlwRenamedSignal_m_axis_dout_tdata[10])
  );
  MUXCY   \blk00000001/blk000001ee/blk0000020b  (
    .CI(\blk00000001/sig00000013 ),
    .DI(\blk00000001/blk000001ee/sig000003b9 ),
    .S(\blk00000001/blk000001ee/sig000003e0 ),
    .O(\blk00000001/blk000001ee/sig000003de )
  );
  XORCY   \blk00000001/blk000001ee/blk0000020a  (
    .CI(\blk00000001/sig00000013 ),
    .LI(\blk00000001/blk000001ee/sig000003e0 ),
    .O(\NLW_blk00000001/blk000001ee/blk0000020a_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000209  (
    .CI(\blk00000001/blk000001ee/sig000003de ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003d1 ),
    .O(\blk00000001/blk000001ee/sig000003dd )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000208  (
    .CI(\blk00000001/blk000001ee/sig000003dd ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003d0 ),
    .O(\blk00000001/blk000001ee/sig000003dc )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000207  (
    .CI(\blk00000001/blk000001ee/sig000003dc ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003cf ),
    .O(\blk00000001/blk000001ee/sig000003db )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000206  (
    .CI(\blk00000001/blk000001ee/sig000003db ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003ce ),
    .O(\blk00000001/blk000001ee/sig000003da )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000205  (
    .CI(\blk00000001/blk000001ee/sig000003da ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003cd ),
    .O(\blk00000001/blk000001ee/sig000003d9 )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000204  (
    .CI(\blk00000001/blk000001ee/sig000003d9 ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003cc ),
    .O(\blk00000001/blk000001ee/sig000003d8 )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000203  (
    .CI(\blk00000001/blk000001ee/sig000003d8 ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003cb ),
    .O(\blk00000001/blk000001ee/sig000003d7 )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000202  (
    .CI(\blk00000001/blk000001ee/sig000003d7 ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003ca ),
    .O(\blk00000001/blk000001ee/sig000003d6 )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000201  (
    .CI(\blk00000001/blk000001ee/sig000003d6 ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003c9 ),
    .O(\blk00000001/blk000001ee/sig000003d5 )
  );
  MUXCY   \blk00000001/blk000001ee/blk00000200  (
    .CI(\blk00000001/blk000001ee/sig000003d5 ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003c8 ),
    .O(\blk00000001/blk000001ee/sig000003d4 )
  );
  MUXCY   \blk00000001/blk000001ee/blk000001ff  (
    .CI(\blk00000001/blk000001ee/sig000003d4 ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003c7 ),
    .O(\blk00000001/blk000001ee/sig000003d3 )
  );
  MUXCY   \blk00000001/blk000001ee/blk000001fe  (
    .CI(\blk00000001/blk000001ee/sig000003d3 ),
    .DI(\blk00000001/blk000001ee/sig000003ba ),
    .S(\blk00000001/blk000001ee/sig000003df ),
    .O(\blk00000001/blk000001ee/sig000003d2 )
  );
  XORCY   \blk00000001/blk000001ee/blk000001fd  (
    .CI(\blk00000001/blk000001ee/sig000003de ),
    .LI(\blk00000001/blk000001ee/sig000003d1 ),
    .O(\NLW_blk00000001/blk000001ee/blk000001fd_O_UNCONNECTED )
  );
  XORCY   \blk00000001/blk000001ee/blk000001fc  (
    .CI(\blk00000001/blk000001ee/sig000003dd ),
    .LI(\blk00000001/blk000001ee/sig000003d0 ),
    .O(\blk00000001/blk000001ee/sig000003c5 )
  );
  XORCY   \blk00000001/blk000001ee/blk000001fb  (
    .CI(\blk00000001/blk000001ee/sig000003dc ),
    .LI(\blk00000001/blk000001ee/sig000003cf ),
    .O(\blk00000001/blk000001ee/sig000003c4 )
  );
  XORCY   \blk00000001/blk000001ee/blk000001fa  (
    .CI(\blk00000001/blk000001ee/sig000003db ),
    .LI(\blk00000001/blk000001ee/sig000003ce ),
    .O(\blk00000001/blk000001ee/sig000003c3 )
  );
  XORCY   \blk00000001/blk000001ee/blk000001f9  (
    .CI(\blk00000001/blk000001ee/sig000003da ),
    .LI(\blk00000001/blk000001ee/sig000003cd ),
    .O(\blk00000001/blk000001ee/sig000003c2 )
  );
  XORCY   \blk00000001/blk000001ee/blk000001f8  (
    .CI(\blk00000001/blk000001ee/sig000003d9 ),
    .LI(\blk00000001/blk000001ee/sig000003cc ),
    .O(\blk00000001/blk000001ee/sig000003c1 )
  );
  XORCY   \blk00000001/blk000001ee/blk000001f7  (
    .CI(\blk00000001/blk000001ee/sig000003d8 ),
    .LI(\blk00000001/blk000001ee/sig000003cb ),
    .O(\blk00000001/blk000001ee/sig000003c0 )
  );
  XORCY   \blk00000001/blk000001ee/blk000001f6  (
    .CI(\blk00000001/blk000001ee/sig000003d7 ),
    .LI(\blk00000001/blk000001ee/sig000003ca ),
    .O(\blk00000001/blk000001ee/sig000003bf )
  );
  XORCY   \blk00000001/blk000001ee/blk000001f5  (
    .CI(\blk00000001/blk000001ee/sig000003d6 ),
    .LI(\blk00000001/blk000001ee/sig000003c9 ),
    .O(\blk00000001/blk000001ee/sig000003be )
  );
  XORCY   \blk00000001/blk000001ee/blk000001f4  (
    .CI(\blk00000001/blk000001ee/sig000003d5 ),
    .LI(\blk00000001/blk000001ee/sig000003c8 ),
    .O(\blk00000001/blk000001ee/sig000003bd )
  );
  XORCY   \blk00000001/blk000001ee/blk000001f3  (
    .CI(\blk00000001/blk000001ee/sig000003d4 ),
    .LI(\blk00000001/blk000001ee/sig000003c7 ),
    .O(\blk00000001/blk000001ee/sig000003bc )
  );
  XORCY   \blk00000001/blk000001ee/blk000001f2  (
    .CI(\blk00000001/blk000001ee/sig000003d3 ),
    .LI(\blk00000001/blk000001ee/sig000003df ),
    .O(\blk00000001/blk000001ee/sig000003bb )
  );
  XORCY   \blk00000001/blk000001ee/blk000001f1  (
    .CI(\blk00000001/blk000001ee/sig000003d2 ),
    .LI(\blk00000001/blk000001ee/sig000003c6 ),
    .O(\NLW_blk00000001/blk000001ee/blk000001f1_O_UNCONNECTED )
  );
  GND   \blk00000001/blk000001ee/blk000001f0  (
    .G(\blk00000001/blk000001ee/sig000003ba )
  );
  VCC   \blk00000001/blk000001ee/blk000001ef  (
    .P(\blk00000001/blk000001ee/sig000003b9 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
