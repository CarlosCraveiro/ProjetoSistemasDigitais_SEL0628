`timescale 1 ns/100 ps
`include "bcd_to_ssg.v"
`include "reg_4bit.v"
`include "counter_bcd.v"

module counter_block( input enable,
                      input reset,
                      input clk,
                      input load,
                      output [6:0] ssg,
                      output enable_next);
  wire [3:0] bcd_in;
  wire [3:0] bcd_out;
  counter_bcd cntr_bcd(clk, enable, reset, bcd_in, enable_next);
  reg_4bit r4b(load, clk, bcd_in, bcd_out);
  bcd_to_ssg bcd2ssg(bcd_out, ssg);  
endmodule
