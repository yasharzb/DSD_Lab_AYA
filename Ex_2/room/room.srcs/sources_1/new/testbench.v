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
    
    reg clock = 0,clear_bar = 1, D;
    wire out, out_bar;
    
    counter_4 c4(.clear_bar(clear_bar), .D(D), .clock(clock), .Q(out), .Q_bar(out_bar));
    
    initial begin 
    clock = 0;
    clear_bar = 0;
    forever #5 clock = ~clock; 
    end
    
    initial
    begin
        D = 1;
        #1
        clear_bar = 1;
        #11
        clear_bar = 0;
        #1
        clear_bar = 1;
        
    end
        
endmodule
