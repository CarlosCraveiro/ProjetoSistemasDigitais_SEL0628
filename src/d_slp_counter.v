`timescale 1 ns/100 ps
`include "counter_block.v"

module d_slp_counter( input enable,
                      input reset,
                      input load,
                      input clk,
                      output [6:0] ssg_0,
                      output [6:0] ssg_1,
                      output [6:0] ssg_2, 
                      output en_machine);
  wire en_1, en_2, en_3, en_4;
  counter_block b0(enable, reset, clk, load, ssg_0, en_1);
  counter_block b1(en_1, reset, clk, load, ssg_1, en_2);
  and(en_3, en_2, en_1);
  counter_block b2(en_3, reset, clk, load, ssg_2, en_4);
  and(en_machine, en_4, en_3);
endmodule
