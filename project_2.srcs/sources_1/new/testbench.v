`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2020 09:40:21 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg a0;
    reg a1;
    reg a2;
    reg a3;
    wire mod_0;
    wire mod_1;
    BCD_modulo_3 BCD_modulo_3_i
        (.A0(a0),
        .A1(a1),
        .A2(a2),
        .A3(a3),
        .mod_0(mod_0),
        .mod_1(mod_1)
        );
        
    initial $monitor($time, "(mode_1, mode_0) = (%d, %d)", mod_1, mod_0);
    
    initial
    begin
        a0 = 0;
        a1 = 0;
        a2  =0;
        a3 = 1;
        
        #10
        
        a0 = 1;
        a1 = 1;
        a2  =0;
        a3 = 0;
        
        #10
        // hi 
        a0 = 0;
        a1 = 0;
        a2  =1;
        a3 = 0;
        #10;
        end
    
endmodule
