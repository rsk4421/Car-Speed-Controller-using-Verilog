`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:41:53 05/05/2021
// Design Name:   car_speed_cntl
// Module Name:   car_speed_tb.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: car_speed_cntl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module car_speed_tb_v;

	// Inputs
	reg clock;
	reg keys;
	reg brake;
	reg accelerate;

	// Outputs
	wire [1:0] speed;

	// Instantiate the Unit Under Test (UUT)
	car_speed_cntl uut (
		.clock(clock), 
		.keys(keys), 
		.brake(brake), 
		.accelerate(accelerate), 
		.speed(speed)
	);

initial 
    clock = 1'b0;
  // Free-running clock  
  always
    #25 clock = ~clock;
    
  // Data stimulus
  initial 
  begin
    #10 keys = 1'b0; brake = 1'b0; accelerate = 1'b0;
    #50 keys = 1'b1;
    #50 accelerate = 1'b1;
    #50 accelerate = 1'b1;
    #50 brake = 1'b1; 
    #50 brake = 1'b1; accelerate = 1'b1;
    #50 brake = 1'b0; accelerate = 1'b1;
	 #50 keys = 1'b0;
    #50 accelerate = 1'b0;
    #50 accelerate = 1'b1;
    #150 brake = 1'b1; accelerate = 1'b0;
    #250;
 
  end


endmodule

