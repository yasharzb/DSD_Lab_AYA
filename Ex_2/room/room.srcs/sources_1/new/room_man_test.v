`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2020 08:40:07 AM
// Design Name: 
// Module Name: room_man_test
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


module room_man_test();
    reg clk = 0;
    reg in;
    reg out;
    reg ent;
    wire open;
    wire close;
    wire[3:0] q;
    room_man rm (.clk(clk), .in(in), .out(out), .ent(ent), .open(open), .close(close), .q(q));
    defparam rm.open_time = 20;
    initial begin
        ent = 1;
        #1 ent = 0;
        #6 in = 1;
        #10 out = 1;
        #10 ent = 1;
        #1 ent = 0;
        #6 in = 1;
        #3 in = 1;
        out = 1;
        out = 1;       
    end 
    always @(*)
        clk <= #5 ~clk;
endmodule
