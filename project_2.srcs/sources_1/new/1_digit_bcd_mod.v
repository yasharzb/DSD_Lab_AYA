`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2020 10:54:27 AM
// Design Name: 
// Module Name: one_digit_bcd_mod_3
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


module one_digit_bcd_mod_3(A, MOD_OUT);
input [3:0] A;
output [1:0] MOD_OUT;
reg [1:0] MOD_OUT;

always @(A)
begin
    MOD_OUT[0] = !(A[3]) & ((!A[2] & !A[1] & A[0]) | (A[2] & !A[1] & !A[0]) | (A[2] & A[1] & A[0]));
    MOD_OUT[1] = (!A[3] & !A[2] & A[1] & !A[0]) | (!A[3] & A[2] & !A[1] & A[0]) | (A[3] & !A[2] & !A[1] & !A[0]);
end

endmodule
