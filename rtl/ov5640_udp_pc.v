//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           ov5640_udp_pc
// Last modified Date:  2020/2/18 9:20:14
// Last Version:        V1.0
// Descriptions:        OV7725以太网传输视频顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2020/2/18 9:20:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ov5640_udp_pc(
    input              sys_clk     ,   //系统时钟  
    input              sys_rst_n   ,   //系统复位信号，低电平有效 
    //以太网接口
    input              eth_rxc     ,   //RGMII接收数据时钟
    input              eth_rx_ctl  ,   //RGMII输入数据有效信号
    input       [3:0]  eth_rxd     ,   //RGMII输入数据
    output             eth_txc     ,   //RGMII发送数据时钟    
    output             eth_tx_ctl  ,   //RGMII输出数据有效信号
    output      [3:0]  eth_txd     ,   //RGMII输出数据          
    output             eth_rst_n   ,   //以太网芯片复位信号，低电平有效    

    //摄像头接口                       
    input              cam_pclk     ,  //cmos 数据像素时钟
    input              cam_vsync    ,  //cmos 场同步信号
    input              cam_href     ,  //cmos 行同步信号
    input   [7:0]      cam_data     ,  //cmos 数据
    output             cam_rst_n    ,  //cmos 复位信号，低电平有效
    output             cam_pwdn     ,  //电源休眠模式选择 0：正常模式 1：电源休眠模式
    output             cam_scl      ,  //cmos SCCB_SCL线
    inout              cam_sda      ,  //cmos SCCB_SDA线      
	 
	 //红外
	 input 				  remote_in    ,
	 output     [5:0]   sel          ,  //数码管位选信号
    output     [7:0]   seg_led      ,  //数码管段选信号
    output             led             //led灯
	 //output     [7:0]   remote_data
	 
);

//parameter define
//开发板MAC地址 00-11-22-33-44-55
parameter  BOARD_MAC = 48'h00_11_22_33_44_55;     
//开发板IP地址 192.168.1.10
parameter  BOARD_IP  = {8'd192,8'd168,8'd1,8'd10};  
//目的MAC地址 ff_ff_ff_ff_ff_ff
parameter  DES_MAC   = 48'hff_ff_ff_ff_ff_ff;    
//目的IP地址 192.168.1.102     
parameter  DES_IP    = {8'd192,8'd168,8'd1,8'd102};

parameter  H_CMOS_DISP = 11'd640;                  //CMOS分辨率--行
parameter  V_CMOS_DISP = 11'd480;                  //CMOS分辨率--列	
parameter  TOTAL_H_PIXEL = H_CMOS_DISP + 12'd1216; //水平总像素大小
parameter  TOTAL_V_PIXEL = V_CMOS_DISP + 12'd504;  //垂直总像素大小

parameter SLAVE_ADDR = 7'h3c          ; //OV5640的器件地址7'h3c
parameter BIT_CTRL   = 1'b1           ; //OV5640的字节地址为16位  0:8位 1:16位
parameter CLK_FREQ   = 27'd50_000_000 ; //i2c_dri模块的驱动时钟频率 
parameter I2C_FREQ   = 20'd250_000    ; //I2C的SCL时钟频率,不超过400KHz

//wire define
wire            clk_50m         ;   //50Mhz时钟
wire            clk_200m        ;   //200Mhz时钟
wire            eth_tx_clk      ;   //以太网发送时钟
wire            locked          ; 
wire            rst_n           ; 
wire            i2c_dri_clk     ;   //I2C操作时钟
wire            i2c_done        ;   //I2C读写完成信号
wire   [7:0]    i2c_data_r      ;   //I2C读到的数据
wire            i2c_exec        ;   //I2C触发信号
wire   [23:0]   i2c_data        ;   //I2C写地址+数据
wire            i2c_rh_wl       ;   //I2C读写控制信号
wire            cam_init_done   ;   //摄像头出初始化完成信号 

wire            transfer_flag   ;   //图像开始传输标志,0:开始传输 1:停止传输
wire            eth_rx_clk      ;   //以太网接收时钟
wire            udp_tx_start_en ;   //以太网开始发送信号
wire   [15:0]   udp_tx_byte_num ;   //以太网发送的有效字节数
wire   [31:0]   udp_tx_data     ;   //以太网发送的数据    
wire            udp_rec_pkt_done;   //以太网单包数据接收完成信号
wire            udp_rec_en      ;   //以太网接收使能信号
wire   [31:0]   udp_rec_data    ;   //以太网接收到的数据
wire   [15:0]   udp_rec_byte_num;   //以太网接收到的字节个数
wire            udp_tx_req      ;   //以太网发送请求数据信号
wire            udp_tx_done     ;   //以太网发送完成信号

reg [7:0] img_data ;
reg cnt;
wire post_frame_hsync;
wire post_frame_vsync;
wire [15:0] post_rgb;
wire [15:0] post_rgb_sobel;
wire [15:0] post_rgb_bin;
wire [15:0] cmos_frame_data;
wire [15:0] post_rgb_rotate;
wire [7:0] remote_data;
//*****************************************************
//**                    main code
//*****************************************************

assign  rst_n = sys_rst_n & locked;
//电源休眠模式选择 0：正常模式 1：电源休眠模式
assign  cam_pwdn  = 1'b0;
assign  cam_rst_n = 1'b1;

//例化时钟IP核
clk_wiz_0 u_clk_wiz_0
   (
    .clk_out1    (clk_50m),  
    //.clk_out2    (clk_200m), 
    .reset       (~sys_rst_n),  
    .locked      (locked),       
    .clk_in1     (sys_clk)
    );   

//I2C配置模块    
i2c_ov5640_rgb565_cfg u_i2c_cfg(
    .clk           (i2c_dri_clk),
    .rst_n         (rst_n),
    .i2c_done      (i2c_done),
    .i2c_data_r    (i2c_data_r),
    .cmos_h_pixel  (H_CMOS_DISP),
    .cmos_v_pixel  (V_CMOS_DISP),
    .total_h_pixel (TOTAL_H_PIXEL),
    .total_v_pixel (TOTAL_V_PIXEL),    
    .i2c_exec      (i2c_exec),
    .i2c_data      (i2c_data),
    .i2c_rh_wl     (i2c_rh_wl),
    .init_done     (cam_init_done)
    );    

//I2C驱动模块
i2c_dri 
   #(
    .SLAVE_ADDR  (SLAVE_ADDR),               //参数传递
    .CLK_FREQ    (CLK_FREQ  ),              
    .I2C_FREQ    (I2C_FREQ  )                
    ) 
   u_i2c_dri(
    .clk         (clk_50m   ),   
    .rst_n       (rst_n     ),   
    //i2c interface
    .i2c_exec    (i2c_exec  ),   
    .bit_ctrl    (BIT_CTRL  ),   
    .i2c_rh_wl   (i2c_rh_wl ),   
    .i2c_addr    (i2c_data[23:8]),   
    .i2c_data_w  (i2c_data[7:0]),   
    .i2c_data_r  (i2c_data_r),   
    .i2c_done    (i2c_done  ),  
    .i2c_ack     (), 
    .scl         (cam_scl   ),   
    .sda         (cam_sda   ),   
    //user interface
    .dri_clk     (i2c_dri_clk)               //I2C操作时钟
);


//CMOS图像数据采集模块
cmos_capture_data u_cmos_capture_data(      //系统初始化完成之后再开始采集数据 
    .rst_n              (rst_n),
    
    .cam_pclk           (cam_pclk),
    .cam_vsync          (cam_vsync),
    .cam_href           (cam_href),
    .cam_data           (cam_data),         
    
    .cmos_frame_vsync   (cmos_frame_vsync),
    .cmos_frame_href    (cmos_frame_href ),
    .cmos_frame_valid   (cmos_frame_valid), //数据有效使能信号
    .cmos_frame_data    (cmos_frame_data )  //有效数据 
    );

	  
 //图像处理模块 media
vip u_vip(
    //module clock
    .clk              (cam_pclk),          // 时钟信号
    .rst_n            (rst_n ),            // 复位信号（低有效）
    //图像处理前的数据接口
    .pre_frame_vsync  (cmos_frame_vsync),
    .pre_frame_hsync  (cmos_frame_href),
    .pre_frame_de     (cmos_frame_valid),
    .pre_rgb          (cmos_frame_data),
//	 .pre_frame_vsync  (post_frame_vsync_sobel),
//    .pre_frame_hsync  (post_frame_hsync_sobel),
//    .pre_frame_de     (post_frame_de_sobel),
//    .pre_rgb          (post_rgb_sobel),
    //.xpos             (pixel_xpos),
    //.ypos             (pixel_ypos),
    //图像处理后的数据接口
    .post_frame_vsync (post_frame_vsync),  // 处理后的场信号
    .post_frame_hsync (post_frame_hsync),  // 处理后的行信号
    .post_frame_de    (post_frame_de),     // 处理后的数据有效使能 
    .post_rgb         (post_rgb)           // 处理后的图像数据

); 	

 //图像处理模块 sobel
vip_sobel u_vip_sobel(
    //module clock
    .clk              (cam_pclk),          // 时钟信号
    .rst_n            (rst_n ),            // 复位信号（低有效）
    //图像处理前的数据接口
    .pre_frame_vsync  (cmos_frame_vsync),
    .pre_frame_hsync  (cmos_frame_href),
    .pre_frame_de     (cmos_frame_valid),
    .pre_rgb          (cmos_frame_data),
    //.xpos             (pixel_xpos),
    //.ypos             (pixel_ypos),
    //图像处理后的数据接口
    .post_frame_vsync (post_frame_vsync_sobel),  // 处理后的场信号
    .post_frame_hsync (post_frame_hsync_sobel),  // 处理后的行信号
    .post_frame_de    (post_frame_de_sobel),     // 处理后的数据有效使能 
    .post_rgb         (post_rgb_sobel)           // 处理后的图像数据

);

 //图像处理模块 binarization
vip_bin u_vip_bin(
    //module clock
    .clk              (cam_pclk),          // 时钟信号
    .rst_n            (rst_n ),            // 复位信号（低有效）
    //图像处理前的数据接口
    .pre_frame_vsync  (cmos_frame_vsync),
    .pre_frame_hsync  (cmos_frame_href),
    .pre_frame_de     (cmos_frame_valid),
    .pre_rgb          (cmos_frame_data),
    //.xpos             (pixel_xpos),
    //.ypos             (pixel_ypos),
    //图像处理后的数据接口
    .post_frame_vsync (post_frame_vsync_bin),  // 处理后的场信号
    .post_frame_hsync (post_frame_hsync_bin),  // 处理后的行信号
    .post_frame_de    (post_frame_de_bin),     // 处理后的数据有效使能 
    .post_rgb         (post_rgb_bin)           // 处理后的图像数据

); 	
 
 
/* //图像处理模块 scale
vip_scale u_vip_scale(
    //module clock
    .clk              (cam_pclk),          // 时钟信号
    .rst_n            (rst_n ),            // 复位信号（低有效）
    //图像处理前的数据接口
    .pre_frame_vsync  (cmos_frame_vsync),
    .pre_frame_hsync  (cmos_frame_href),
    .pre_frame_de     (cmos_frame_valid),
    .pre_rgb          (cmos_frame_data),
    //.xpos             (pixel_xpos),
    //.ypos             (pixel_ypos),
    //图像处理后的数据接口
    .post_frame_vsync (post_frame_vsync_sobel),  // 处理后的场信号
    .post_frame_hsync (post_frame_hsync_sobel),  // 处理后的行信号
    .post_frame_de    (post_frame_de_sobel),     // 处理后的数据有效使能 
    .post_rgb         (post_rgb_sobel)           // 处理后的图像数据

);
*/
	//开始传输控制模块   
start_transfer_ctrl u_start_transfer_ctrl(
    .clk                (eth_rx_clk),
    .rst_n              (rst_n),
    .udp_rec_pkt_done   (udp_rec_pkt_done),
    .udp_rec_en         (udp_rec_en      ),
    .udp_rec_data       (udp_rec_data    ),
    .udp_rec_byte_num   (udp_rec_byte_num),

    .transfer_flag      (transfer_flag)      //图像开始传输标志,1:开始传输 0:停止传输
    );       

//红外
top_remote_rcv u_top_remote_rcv(
     .sys_clk            (clk_50m)     ,    //系统时钟 
     .sys_rst_n          (sys_rst_n)   ,    //系统复位信号，低电平有效
     .remote_in          (remote_in)   ,    //红外接收信号
     .remote_data        (remote_data) ,    //红外输出信号
	  .sel                (sel)         ,    //数码管位选信号
     .seg_led            (seg_led)     ,    //数码管段选信号
     .led                (led)              //led灯
);

//旋转
rotame_dispose u_rotame_dispose(  
	  .cam_pclk           (cam_pclk)    ,		
	  .rst_n              (sys_rst_n)   ,
	  .change_en          (remote_data) ,          
	  .t_width            (H_CMOS_DISP) ,    
	  .t_high             (V_CMOS_DISP) ,    
     .cmos_frame_vsync   (cmos_frame_vsync),          
     .cmos_frame_href    (cmos_frame_href),          
     .cmos_frame_valid   (cmos_frame_valid),          
     .cmos_frame_data    (cmos_frame_data),          
	  .frame_valid_out    (frame_valid_out) ,        
	  .frame_data_out		 (post_rgb_rotate)   
);



//always@(posedge cam_pclk or negedge rst_n or negedge remote_in) begin
//       if(!rst_n)
//		    cnt<=1'b0;
//          remote_data <=2'h16;
//      else if(remote_data==2'h16) begin
//		
//			else if(~cnt) begin
//				 cnt <=1'b1;img_data <= post_rgb[15:8];end
//			else begin 
//				 cnt <= 1'b0;img_data <= post_rgb[7:0];end
//			end
//
//      else if(remote_data==2'h19)begin 
//					else if(~cnt) begin
//				 cnt <=1'b1;img_data <= post_rgb[15:8];end
//			else begin 
//				 cnt <= 1'b0;img_data <= post_rgb[7:0];end
//			end
//	   else ;
//	  end
	  





 
always@(posedge cam_pclk or negedge rst_n) begin
       if(!rst_n)
          cnt <=1'b0;
      else if(~cnt) 
		begin
          cnt <=1'b1;
			 if (remote_data==8'h16)
			 img_data <= post_rgb[15:8];
			 else if (remote_data==8'h19)
			 img_data <= post_rgb_sobel[15:8];
			 else if(remote_data==8'hd)
			 img_data <= cmos_frame_data[15:8];
			 else if(remote_data==8'hc)
			 img_data <= post_rgb_bin[15:8];
			 else if(remote_data==8'h18)
			 img_data <= post_rgb_rotate[15:8];
			 else 
			 img_data <= post_rgb[15:8];
      end
		
		else 
		
		begin
          cnt <=1'b0;
			 
			 if (remote_data==8'h16)
			 img_data <= post_rgb[7:0];
			 else if (remote_data==8'h19)
			 img_data <= post_rgb_sobel[7:0];
			 else if(remote_data==8'hd)
			 img_data <= cmos_frame_data[7:0];
			 else if(remote_data==8'hc)
			 img_data <= post_rgb_bin[7:0];
			 else if(remote_data==8'h18)
			 img_data <= post_rgb_rotate[7:0];
			 else
			 img_data <= post_rgb[7:0];
      end
	  end
	  

	
//	always@(posedge cam_pclk or negedge rst_n) begin
//       if(!rst_n)
//          cnt <=1'b0;
//      else if(~cnt) 
//		begin
//          cnt <=1'b1;
//			 img_data <= post_rgb[15:8];
//			 //img_data <= post_rgb_sobel[15:8];
//      end
//		else 
//		begin
//          cnt <=1'b0;
//			 img_data <= post_rgb[7:0];
//			 //img_data <= post_rgb_sobel[7:0];
//		end
//	  end
//	  
//	
	
	
//图像封装模块     
img_data_pkt u_img_data_pkt(    
    .rst_n              (rst_n),              
   
    .cam_pclk           (cam_pclk),
    .img_vsync          (cam_vsync),
    .img_data_en        (cam_href),
    .img_data           (img_data),
    .transfer_flag      (transfer_flag),            
    .eth_tx_clk         (eth_tx_clk     ),
    .udp_tx_req         (udp_tx_req     ),
    .udp_tx_done        (udp_tx_done    ),
    .udp_tx_start_en    (udp_tx_start_en),
    .udp_tx_data        (udp_tx_data    ),
    .udp_tx_byte_num    (udp_tx_byte_num)
    );  

//以太网顶层模块    
eth_top  #(
    .BOARD_MAC     (BOARD_MAC),              //参数例化
    .BOARD_IP      (BOARD_IP ),          
    .DES_MAC       (DES_MAC  ),          
    .DES_IP        (DES_IP   )          
    )          
    u_eth_top(          
    .sys_rst_n       (rst_n     ),           //系统复位信号，低电平有效            
    //.clk_200m        (clk_200m), 
    //以太网RGMII接口             
    .eth_rxc         (eth_rxc   ),           //RGMII接收数据时钟
    .eth_rx_ctl      (eth_rx_ctl),           //RGMII输入数据有效信号
    .eth_rxd         (eth_rxd   ),           //RGMII输入数据
    .eth_txc         (eth_txc   ),           //RGMII发送数据时钟    
    .eth_tx_ctl      (eth_tx_ctl),           //RGMII输出数据有效信号
    .eth_txd         (eth_txd   ),           //RGMII输出数据          
    .eth_rst_n       (eth_rst_n ),           //以太网芯片复位信号，低电平有效 

    .gmii_rx_clk     (eth_rx_clk),
    .gmii_tx_clk     (eth_tx_clk),       
    .udp_tx_start_en (udp_tx_start_en),
    .tx_data         (udp_tx_data),
    .tx_byte_num     (udp_tx_byte_num),
    .udp_tx_done     (udp_tx_done),
    .tx_req          (udp_tx_req ),
    .rec_pkt_done    (udp_rec_pkt_done),
    .rec_en          (udp_rec_en      ),
    .rec_data        (udp_rec_data    ),
    .rec_byte_num    (udp_rec_byte_num)
    );

endmodule