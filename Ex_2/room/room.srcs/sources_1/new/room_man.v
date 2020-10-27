`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2020 03:23:45 PM
// Design Name: 
// Module Name: room_man
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module room_man( 
    input clk,
    input in,
    input out,
    input ent,
    input clr,
    output reg open,
    output close,
    output[3:0] q
    );
    wire en;
    wire u;
    parameter open_time = 10;
    parameter init_time = 1;
    integer init_time_elapsed = 0;
    counter_4 c4(.clear_bar(clr), .U(u), .clock(clk), .Enable(en), .Q0(q[0]), .Q1(q[1]), .Q2(q[2]), .Q3(q[3]));
    
    assign en = in ^ out;
    assign u = in;
    assign close = q[3] | q[2] | q[1] | q[0];
    
    initial
        #init_time init_time_elapsed = 1;
    
    always @(ent) begin
        if (init_time_elapsed == 1) begin
            open <= ~(q[3] & q[2] & q[1] & q[0]) & ent;
            #open_time open <= 0;
        end        
    end
endmodule
