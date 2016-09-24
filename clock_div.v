`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:22 09/03/2014 
// Design Name: 
// Module Name:    clock_div 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
///////////////////////////////////////////////////////////////////////////////
module clock_div(
        input clk_in,
        input reset,
        output clk_out
        );

    reg [24:0] counter;

    initial
        counter = -1;
                                          // Atlys (100 MHz)   Papilio (32 MHz)
    parameter limit = 25'd32000000;       // 27'd100000000        25'd32000000
    parameter limit_half = 25'd16000000;  // 27'd50000000         25'd16000000
    parameter start = 25'd0;

    always @(negedge clk_in or posedge reset) begin
        if (reset)
            counter <= start;
        else
            if (counter == limit-1)
                counter <= start;
            else
                counter <= counter + 1;
    end

    assign clk_out = (counter >= limit_half);

endmodule
