`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:12:49 09/03/2014
// Design Name:   clock_div
// Module Name:   C:/Users/Luis/XilinxWorkspace/Lab_02_2/clock_div_tf.v
// Project Name:  Lab_02_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
///////////////////////////////////////////////////////////////////////////////

module clock_div_tf;

    // Inputs
    reg clk_in;
    reg reset;

    // Outputs
    wire clk_out;

    // Instantiate the Unit Under Test (UUT)
    clock_div uut (
        .clk_in(clk_in),
        .reset(reset),
        .clk_out(clk_out)
    );

    always #5 clk_in = ~clk_in; // periodo 10 ns

    initial begin
        // Initialize Inputs
        clk_in = 0;
        reset = 0;

        // Wait 100 ns for global reset to finish
        #10;

        // Add stimulus here
        #150 reset = 1;
        #5 reset = 0;
        #300 $finish(0);
    end

endmodule
