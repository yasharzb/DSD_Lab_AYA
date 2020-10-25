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
    reg a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15;
    wire is_mod_3;
    
    BCD_modulo_3 BCD_modulo_3_i
        (.A0(a0), .A1(a1),.A2(a2),.A3(a3),
        .A4(a4), .A5(a5),.A6(a6),.A7(a7),
        .A8(a8), .A9(a9),.A10(a10),.A11(a11),
        .A12(a12), .A13(a13),.A14(a14),.A15(a15),
        .is_mul_of_3(is_mod_3)
        );
        
    initial $monitor($time, ", %d", is_mod_3);
    
    initial
    begin
        // 0 : remainder = 0
        a0 = 0; a1 = 0; a2  =0; a3 = 0;
        a4 = 0; a5 = 0; a6  =0; a7 = 0;
        a8 = 0; a9 = 0; a10 =0; a11 = 0;
        a12 = 0; a13 = 0; a14  =0; a15 =0;
        #10
        //9824 : remainder = 2
        a0 = 0; a1 = 0; a2  =1; a3 = 0;
        a4 = 0; a5 = 1; a6  =0; a7 = 0;
        a8 = 0; a9 = 0; a10 =1; a11 = 0;
        a12 = 1; a13 = 0; a14  =0; a15 = 1;
        #10
        //1387   : remainder = 1
        a0 = 1; a1 = 1; a2  =1; a3 = 0;
        a4 = 1; a5 = 1; a6  =0; a7 = 0;
        a8 = 0; a9 = 0; a10 =0; a11 = 1;
        a12 = 1; a13 = 0; a14  =0; a15 =0;
        #10
        
        //6357    : remainder = 0
        a0 = 1; a1 = 1; a2  =1; a3 = 0;
        a4 = 1; a5 = 0; a6  =1; a7 = 0;
        a8 = 1; a9 = 1; a10 =0; a11 = 0;
        a12 =0; a13 = 1; a14  =1; a15 =0;
        #10
        
        // 7777 : remainder = 1
        a0 = 1; a1 = 1; a2  =1; a3 = 0;
        a4 = 1; a5 = 1; a6  =1; a7 = 0;
        a8 = 1; a9 = 1; a10 =1; a11 = 0;
        a12 = 1; a13 = 1; a14  =1; a15 =0;
        #10;
        // 9999 : remainder = 0
        a0 = 1; a1 = 0; a2  =0; a3 = 1;
        a4 = 1; a5 = 0; a6  =0; a7 = 1;
        a8 = 1; a9 = 0; a10 =0; a11 = 1;
        a12 = 1; a13 = 0; a14  =0; a15 =1;
        #10;
        
        // 340 : remainder = 1
        a0 = 0; a1 = 0; a2  =0; a3 = 0;
        a4 = 0; a5 = 0; a6  =1; a7 = 0;
        a8 = 1; a9 = 1; a10 =0; a11 = 0;
        a12 = 0; a13 = 0; a14  =0; a15 =0;
        #10;
        
        
        end
    
endmodule
