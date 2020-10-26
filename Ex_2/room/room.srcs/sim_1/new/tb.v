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


module tb(
    );
    
    reg preset, clear,clock = 0, D;
    wire out, out_bar;
    
    counter_4 c4(.ps(preset), .clear(clear), .D(D), .clock(clock), .Q(out), .Q_bar(out_bar));
    
    initial #5 clock = ~clock;
    
    initial
    begin
        D = 1;
        #10
        D = 0;
        #3
        D = 1;
        #8 
        D = 0;
    end
        
endmodule
