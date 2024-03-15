//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           rgmii_rx
// Last modified Date:  2020/2/13 9:20:14
// Last Version:        V1.0
// Descriptions:        RGMII接收模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2020/2/13 9:20:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module rgmii_rx(
    //以太网RGMII接口
    input              rgmii_rxc   , //RGMII接收时钟
    input              rgmii_rx_ctl, //RGMII接收数据控制信号
    input       [3:0]  rgmii_rxd   , //RGMII接收数据    

    //以太网GMII接口
    output             gmii_rx_clk , //GMII接收时钟
    output  reg        gmii_rx_dv  , //GMII接收数据有效信号
    output  reg [7:0]  gmii_rxd      //GMII接收数据   
    );

//wire define
wire         rgmii_rxc_ibuf;
wire         rgmii_rxc_bufg;     //全局时钟缓存
wire         rgmii_rxc_bufg_inv; //全局时钟缓存取反
wire  [3:0]  rgmii_rxd_delay;    //rgmii_rxd输入延时
wire         rgmii_rx_ctl_delay; //rgmii_rx_ctl输入延时
wire  [1:0]  gmii_rxdv_t;        //两位GMII接收有效信号 
wire  [7:0]  gmii_rxd_t;         //8位GMII接收有效数据

//*****************************************************
//**                    main code
//*****************************************************

assign gmii_rx_clk = rgmii_rxc_bufg;
assign rgmii_rxc_bufg_inv = ~rgmii_rxc_bufg;

//寄存输出GMII接收有效信号和数据
always @(posedge gmii_rx_clk) begin
    gmii_rx_dv <= gmii_rxdv_t[0] & gmii_rxdv_t[1];
    gmii_rxd <= gmii_rxd_t;
end

//输入全局缓冲
IBUFG BUFG_inst (
   .I  (rgmii_rxc),     // 1-bit input: Clock input
   .O  (rgmii_rxc_ibuf) // 1-bit output: Clock output
);

//全局时钟缓冲
BUFG clkin_buf_inst(
   .I  (rgmii_rxc_ibuf),
   .O  (rgmii_rxc_bufg)
);

//rgmii_rx_ctl输入双沿采样
IDDR2 #(
   .DDR_ALIGNMENT("C1"),    // Sets output alignment to "NONE", "C0" or "C1" 
   .INIT_Q0(1'b0),          // Sets initial state of the Q0 output to 1'b0 or 1'b1
   .INIT_Q1(1'b0),          // Sets initial state of the Q1 output to 1'b0 or 1'b1
   .SRTYPE("ASYNC")         // Specifies "SYNC" or "ASYNC" set/reset
) IDDR2_rgmii_rx_ctl (
   .Q0(gmii_rxdv_t[1]),     // 1-bit output captured with C0 clock
   .Q1(gmii_rxdv_t[0]),     // 1-bit output captured with C1 clock
   .C0(rgmii_rxc_bufg),     // 1-bit clock input
   .C1(rgmii_rxc_bufg_inv), // 1-bit clock input
   .CE(1'b1),               // 1-bit clock enable input
   .D(rgmii_rx_ctl),        // 1-bit DDR data input
   .R(1'b0),                // 1-bit reset input
   .S(1'b0)                 // 1-bit set input
);

//rgmii_rxd输入双沿采样
genvar i;
generate for (i=0; i<4; i=i+1)
    begin : rxdata_bus
        //输入双沿采样寄存器
        IDDR2 #(
           .DDR_ALIGNMENT("C1"),    // Sets output alignment to "NONE", "C0" or "C1" 
           .INIT_Q0(1'b0),          // Sets initial state of the Q0 output to 1'b0 or 1'b1
           .INIT_Q1(1'b0),          // Sets initial state of the Q1 output to 1'b0 or 1'b1
           .SRTYPE("ASYNC")         // Specifies "SYNC" or "ASYNC" set/reset
        ) IDDR2_rgmii_rxd (
           .Q0(gmii_rxd_t[4+i]),    // 1-bit output captured with C0 clock
           .Q1(gmii_rxd_t[i]),      // 1-bit output captured with C1 clock
           .C0(rgmii_rxc_bufg),     // 1-bit clock input
           .C1(rgmii_rxc_bufg_inv), // 1-bit clock input
           .CE(1'b1),               // 1-bit clock enable input
           .D(rgmii_rxd[i]),        // 1-bit DDR data input
           .R(1'b0),                // 1-bit reset input
           .S(1'b0)                 // 1-bit set input
        );      
    end
endgenerate

endmodule 