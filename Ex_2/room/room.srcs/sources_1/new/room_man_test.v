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
    reg clr = 0;
    reg in;
    reg out;
    reg ent;
    wire open;
    wire close;
    wire[3:0] q;
    room_man rm (.clk(clk), .in(in), .out(out), .ent(ent), .open(open), .close(close), .q(q), .clr(clr));
    defparam rm.open_time = 20;
    defparam rm.init_time = 1;
    integer clk_time = 10;
    initial begin
        in = 0;
        out = 0;
        #rm.init_time clr = 1; 
        ent = 1;
        #1 ent = 0;
        #6 in = 1;
        #clk_time in = 0;
        #1 in = 1;
        #clk_time in = 0;
        #10 out = 1;
        #clk_time out = 0;
        #10 ent = 1;
        #1 ent = 0;
        in = 1;
        #clk_time in = 0;
        #3 in = 1;
        out = 1;
        #clk_time in = 0;
        out = 0;
        #1 out = 1;
        #clk_time out = 0;      
        #1 out = 1;
        #clk_time out = 0;      
    end 
    always @(*)
        clk <= #(clk_time/2) ~clk;
endmodule
