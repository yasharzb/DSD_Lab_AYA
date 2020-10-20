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
    reg a;
    reg b;
    wire out;
    BCD_modulo_3 BCD_modulo_3_i
        (.inee1(a),
        .inee2(b),
        .outee(out));
        
        
    initial
    begin
        a = 1;
        b = 1;
        // hi 
        $monitor($time, "(in, reset, out) = (%d, %d, %d)", a, b, out);
    end
    
endmodule
