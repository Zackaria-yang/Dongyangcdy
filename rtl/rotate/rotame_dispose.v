`timescale 1ns / 1ps
//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料�/版权所有，盗版必究�/Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           rotame_dispose
// Last modified Date:  2020/10/14 9:19:08
// Last Version:        V1.0
// Descriptions:        图像旋转前处理模�/                      
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2019/05/04 9:19:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module rotame_dispose(             
	input			cam_pclk,		
	input			rst_n,
	input  [7:0]	change_en,              //1：旋� 2：旋�0 4：旋�0 8: 不旋�
	input  [9:0]    t_width,                //宽度
	input  [9:0]    t_high,	                //高度
	//图像输入信号                          
    input			cmos_frame_vsync,       //输入场信�   
	 input			cmos_frame_href,        //输入行信�    
	 input			cmos_frame_valid,       //输入数据有效信号
	input  [15:0]	cmos_frame_data,	    //输入数据
	
	//图像输出信号
    output 			frame_valid_out,        //输出数据有效信号
	output [15:0]	frame_data_out		    //输出数据
    );

//reg define 
reg			cmos_frame_vsync_d0;			
reg         cmos_frame_href_d0;
reg			cmos_frame_vsync_d1;			
reg         cmos_frame_href_d1;
reg  [7:0]  change_en_d0; 
reg         rd_en_d0;
reg  [13:0] waddr;                 //ram写地址
reg  [13:0] raddr;                 //ram读地址
reg  [15:0] frame_data_out;        //输出数据有效信号
reg         frame_valid_out;       //输出数据  
reg         rd_en;	               //读使能信�
//wire define 
wire		hs_nege;               //行信号下降沿
wire		vs_nege;               //场信号下降沿
wire        rd_en_nege;            //读使能信号下降沿
wire [15:0] ram_dout;              //ram输出数据

//*****************************************************
//**                    main code
//*****************************************************

//行信号下降沿
assign hs_nege = ~cmos_frame_href_d0 && cmos_frame_href_d1;	

//场信号下降沿
assign vs_nege = ~cmos_frame_vsync_d0 && cmos_frame_vsync_d1;

//读使能信号下降沿
assign rd_en_nege = ~rd_en && rd_en_d0;
	
//输入打拍	
always @(posedge cam_pclk or negedge rst_n) begin
    if(!rst_n) begin
        cmos_frame_vsync_d0 <= 1'b0;
        cmos_frame_href_d0  <= 1'b0;		
        cmos_frame_vsync_d1 <= 1'b0;
        cmos_frame_href_d1  <= 1'b0;				
		change_en_d0 <= 8'h00;
		rd_en_d0 <= 1'b0;
    end
    else begin
        cmos_frame_vsync_d0 <= cmos_frame_vsync;
        cmos_frame_href_d0  <= cmos_frame_href;		
        cmos_frame_vsync_d1 <= cmos_frame_vsync_d0;
        cmos_frame_href_d1  <= cmos_frame_href_d0; 		
		change_en_d0 <= change_en;	
		rd_en_d0 <= rd_en;		
    end
end	

//产生写地址		
always @(posedge cam_pclk or negedge rst_n) begin
    if(!rst_n) 
        waddr <= 14'b0;	
    else begin
		if(vs_nege)
			waddr[9:0] <= 10'b0;
		else if(cmos_frame_href)begin
			if(cmos_frame_valid)
				waddr[9:0] <= waddr[9:0] + 1;  //存同一行数�		
				else 
				waddr[9:0] <= waddr[9:0];
		end
        else begin
            waddr[9:0] <= 0;
        end	
           
        if(vs_nege)
			waddr[12:10] <= 3'b0;
		else if(hs_nege)begin
			if(waddr[12:10] == 3'd7)
				waddr[12:10] <= 0;
			else 
				waddr[12:10] <= waddr[12:10] + 1;  //区分8行数�	
				end
        else begin
             waddr[12:10] <= waddr[12:10];
        end	
		
		if(vs_nege)
			waddr[13] <= 0;
		else if(hs_nege)begin
			if(waddr[12:10] == 3'd7)
				waddr[13] <= ~waddr[13];    //乒乓操作
			else 
				waddr[13] <= waddr[13];
		end
        else begin
            waddr[13] <= waddr[13];
        end	
    end
end		
	
//产生读使能信�
always @(posedge cam_pclk or negedge rst_n) begin
    if(!rst_n) 
        rd_en <= 1'b0;	
    else begin		
		if(vs_nege)
			rd_en <= 0;   //一行读完拉低读使能
		else if( (raddr[9:0] == t_width - 1) && change_en_d0 == 8'h46 )
			rd_en <= 0;		//八行读完拉低读使�		
			else if(change_en_d0 == 8'h43 && raddr[12:10] == 3'd0 && (raddr[9:0] == t_width - 1))
			rd_en <= 0;	    //八行读完拉低读使�
		else if(change_en_d0 == 8'h15 && raddr[12:10] == 3'd7 && (raddr[9:0] == 0))
			rd_en <= 0;		//一行读完拉低读使能	 
        else if(change_en_d0 == 8'h44 && raddr[9:0] == 0)	
			rd_en <= 0;				 
		else if(hs_nege)
			if(change_en_d0 == 8'h43 || change_en_d0 == 8'h15)
				if(waddr[12:10] == 3'd7 ) //写满8行拉高读使能
					rd_en <= 1;
				else
				    rd_en <= rd_en;
			else
				rd_en <= 1;				  //写完一行拉高读使能		
        else 
            rd_en <= rd_en;       
    end
end		
			
//产生读地址		
always @(posedge cam_pclk or negedge rst_n) begin
    if(!rst_n) 
        raddr <= 14'b0;	
    else begin
	    case(change_en_d0)
			8'h43 :	begin  //旋转90
						if(vs_nege)
							raddr[9:0] <= 10'b0;
						else if(rd_en)begin
							if(raddr[12:10] == 3'd0)
								raddr[9:0] <= raddr[9:0] + 1;     //存同一行数�						
								else                                  
							    raddr[9:0] <= raddr[9:0];         
						end                                       
						else begin                                
							raddr[9:0] <= 0;                      
						end	                                      
						                                          
						if(vs_nege)                               
							raddr[12:10] <= 7;                    
						else if(rd_en)begin                       
							raddr[12:10] <= raddr[12:10] - 1;     //每次读每行的同一列数�					
							end                                       
						else begin                                
							raddr[12:10] <= 7;                    
						end	                                      
						                                          
						if(vs_nege)                               
		                	raddr[13] <= 1;                       
		                else if(hs_nege)begin                     
		                	if(waddr[12:10] == 3'd7)              
		                		raddr[13] <= ~raddr[13];           //乒乓操作
		                	else                                  
		                		raddr[13] <= raddr[13];           
		                end
                        else begin
                            raddr[13] <= raddr[13];
                        end	
						
			end
			8'h44 :	begin //旋转180
						if(vs_nege)
							raddr[9:0] <= t_width - 1;
						else if(rd_en)begin
							raddr[9:0] <= raddr[9:0] - 1;         //倒读一行数�					
							end
						else begin
							raddr[9:0] <= t_width - 1;
						end	
						
						if(vs_nege)
							raddr[13:10] <= 4'b0;
						else if(rd_en_nege)begin
							if(raddr[13:10] == 4'd15)
								raddr[13:10] <= 0;
							else 
								raddr[13:10] <= raddr[13:10] + 1;  //区分8�					
								end
						else begin
							raddr[13:10] <= raddr[13:10];
						end	
						
			end							
            8'h15 :	begin  //旋转270
						if(vs_nege)
							raddr[9:0] <= t_width - 1;
						else if(rd_en)begin
							if(raddr[12:10] == 3'd7)
								raddr[9:0] <= raddr[9:0] - 1;      //存同一行数�						
								else                                   
							    raddr[9:0] <= raddr[9:0];          
						end                                        
						else begin                                 
							raddr[9:0] <= t_width - 1;                       
						end	                                       
						                                                                                                              
						if(vs_nege)                                
							raddr[12:10] <= 0;                     
						else if(rd_en)begin                        
							raddr[12:10] <= raddr[12:10] + 1;      //每次读每行的同一列数�					
							end                                        
						else begin                                 
							raddr[12:10] <= 0;                     
						end							               
						                                           
						                                           
						if(vs_nege)                                
		                	raddr[13] <= 1;                        
		                else if(hs_nege)begin                      
		                	if(waddr[12:10] == 3'd7)               
		                		raddr[13] <= ~raddr[13];            //乒乓操作
		                	else                                   
		                		raddr[13] <= raddr[13];            
		                end                                        
                        else begin                                 
                            raddr[13] <= raddr[13];                
                        end											 	
			end                                                    
			8'h46 :	begin //原图                                   
						if(vs_nege)                                
							raddr[9:0] <= 10'b0;                   
						else if(rd_en)begin
							raddr[9:0] <= raddr[9:0] + 1;          //读同一行数�					
							end
						else begin
							raddr[9:0] <= 0;
						end	
						
						if(vs_nege)
							raddr[13:10] <= 4'b0;
						else if(rd_en_nege)begin
							if(raddr[13:10] == 4'd15)
								raddr[13:10] <= 0;
							else 
								raddr[13:10] <= raddr[13:10] + 1;  //区分8�					
								end
						else begin
							raddr[13:10] <= raddr[13:10];
						end	
            end   						
			default :;
		endcase	
    end
end

//产生输出信号
always @(posedge cam_pclk or negedge rst_n) begin
    if(!rst_n) begin
        frame_data_out <= 10'b0;
        frame_valid_out  <= 10'b0;
    end
    else begin
        frame_data_out <= ram_dout;
        frame_valid_out  <= rd_en_d0;	    
    end
end		
	
	
ram_16384x16 u_ram_16384x16 (
  .clka(cam_pclk), 
  .wea(cmos_frame_valid), 
  .addra(waddr), 
  .dina(cmos_frame_data), 
  .clkb(cam_pclk), 
  .addrb(raddr), 
  .doutb(ram_dout) 
);	
	
endmodule
