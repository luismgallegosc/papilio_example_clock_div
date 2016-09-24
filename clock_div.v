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
        output clk_out,
        output [7:0] leds
        );

    reg [24:0] counter;
    reg [7:0] leds_reg;

    initial begin
        counter = 0;
        leds_reg = 1;
    end
                                          // Atlys (100 MHz) Papilio (32 MHz)
    parameter limit = 25'd32000000;       // 27'd100000000   25'd32000000
    parameter limit_half = 25'd16000000;  // 27'd50000000    25'd16000000
    parameter start = 25'd0;

    always @(negedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= start;
            leds_reg <= 1;
        end
        else begin
            if (counter == limit-1) begin
                counter <= start;
                leds_reg <= leds_reg << 1;
                if (leds_reg == 8'b1000_0000)
                    leds_reg <= 1;
            end
            else
                counter <= counter + 1;
        end
    end

    assign clk_out = (counter >= limit_half);
    assign leds = leds_reg;

endmodule
