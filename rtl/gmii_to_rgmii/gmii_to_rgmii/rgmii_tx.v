//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           rgmii_tx
// Last modified Date:  2020/2/13 9:20:14
// Last Version:        V1.0
// Descriptions:        RGMII发送模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2020/2/13 9:20:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module rgmii_tx(
    //GMII发送端口
    input              gmii_tx_clk , //GMII发送时钟    
    input              gmii_tx_en  , //GMII输出数据有效信号
    input       [7:0]  gmii_txd    , //GMII输出数据        
    
    //RGMII发送端口
    output             rgmii_txc   , //RGMII发送数据时钟    
    output             rgmii_tx_ctl, //RGMII输出数据有效信号
    output      [3:0]  rgmii_txd     //RGMII输出数据     
    );

//wire define
wire             gmii_tx_clk_inv;   
    
//*****************************************************
//**                    main code
//*****************************************************

assign gmii_tx_clk_inv = ~gmii_tx_clk;

//输出双沿采样寄存器 (rgmii_txc)
ODDR2 #(
   .DDR_ALIGNMENT("C0"),// Sets output alignment to "NONE", "C0" or "C1" 
   .INIT(1'b0),         // Sets initial state of the Q output to 1'b0 or 1'b1
   .SRTYPE("ASYNC")     // Specifies "SYNC" or "ASYNC" set/reset
) ODDR2_rgmii_txc (
   .Q(rgmii_txc),       // 1-bit DDR output data
   .C0(gmii_tx_clk),    // 1-bit clock input
   .C1(gmii_tx_clk_inv),// 1-bit clock input
   .CE(1'b1),           // 1-bit clock enable input
   .D0(1'b1),           // 1-bit data input (associated with C0)
   .D1(1'b0),           // 1-bit data input (associated with C1)
   .R(1'b0),            // 1-bit reset input
   .S(1'b0)             // 1-bit set input
);

//输出双沿采样寄存器 (rgmii_tx_ctl)
ODDR2 #(
   .DDR_ALIGNMENT("C0"),// Sets output alignment to "NONE", "C0" or "C1" 
   .INIT(1'b0),         // Sets initial state of the Q output to 1'b0 or 1'b1
   .SRTYPE("ASYNC")     // Specifies "SYNC" or "ASYNC" set/reset
) ODDR2_rgmii_tx_ctl (
   .Q(rgmii_tx_ctl),    // 1-bit DDR output data
   .C0(gmii_tx_clk),    // 1-bit clock input
   .C1(gmii_tx_clk_inv),// 1-bit clock input
   .CE(1'b1),           // 1-bit clock enable input
   .D0(gmii_tx_en),     // 1-bit data input (associated with C0)
   .D1(gmii_tx_en),     // 1-bit data input (associated with C1)
   .R(1'b0),            // 1-bit reset input
   .S(1'b0)             // 1-bit set input
);

genvar i;
generate for (i=0; i<4; i=i+1)
    begin : txdata_bus
        //输出双沿采样寄存器 (rgmii_txd)
        ODDR2 #(
           .DDR_ALIGNMENT("C0"),// Sets output alignment to "NONE", "C0" or "C1" 
           .INIT(1'b0),         // Sets initial state of the Q output to 1'b0 or 1'b1
           .SRTYPE("ASYNC")     // Specifies "SYNC" or "ASYNC" set/reset
        ) ODDR2_rgmii_txd (
           .Q(rgmii_txd[i]),    // 1-bit DDR output data
           .C0(gmii_tx_clk),    // 1-bit clock input
           .C1(gmii_tx_clk_inv),// 1-bit clock input
           .CE(1'b1),           // 1-bit clock enable input
           .D0(gmii_txd[i]),    // 1-bit data input (associated with C0)
           .D1(gmii_txd[4+i]),  // 1-bit data input (associated with C1)
           .R(1'b0),            // 1-bit reset input
           .S(1'b0)             // 1-bit set input
        );      
    end
endgenerate

endmodule 