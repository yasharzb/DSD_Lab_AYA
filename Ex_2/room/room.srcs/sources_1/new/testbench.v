`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2020 09:11:35 PM
// Design Name: 
// Module Name: tb
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


module testbench(
    );
    
    reg clock = 0,clear_bar = 1, U, Enable = 1;
    wire Q0, Q1, Q2, Q3;
    
    counter_4 c4(.clear_bar(clear_bar), .U(U), .clock(clock), .Enable(Enable), .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3));
    
    initial begin 
    clock = 0;
    clear_bar = 0;
    forever #2 clock = ~clock; 
    end
    
    initial
    begin
        U = 1;
        #2
        clear_bar = 1;
        #30;
        U = 0;
        #40
        Enable = 0;
    end
        
endmodule
