`timescale 10 ns/1 ns 
`include "sim/src/control_machine.v"
`include "sim/src/d_slp_counter.v"

module adc_dual_slope_tb();
//clock generation
reg clk, start, cap_discharged;
wire finished_counting, load, reset, enable_counting;
wire ch_Zero, ch_Vref, ch_Vmeasured;
wire [6:0] ssg_0;
wire [6:0] ssg_1;
wire [6:0] ssg_2;
// Modules to control adc
control_machine ctrl_logic( start, clk, finished_counting,
                            cap_discharged, ch_Vmeasured, ch_Vref,
                            ch_Zero, load, reset, enable_counting);

d_slp_counter counter(  enable_counting, reset, load,
                        clk, ssg_0, ssg_1, ssg_2,
                        finished_counting);

always 
     #1 clk = ~clk;
initial begin 
    $dumpfile("sim/vcd/adc_dual_slope.vcd");
    $dumpvars(0, adc_dual_slope_tb);
    clk = 0;
    start = 1;
    cap_discharged = 0; 
    #5 start = 0;
    #3000 cap_discharged = 1;
    #20 cap_discharged = 0;

    #5 start = 1;
    #5 start = 0;
    #3000 cap_discharged = 1;
    #10 cap_discharged = 0;
    $finish();  
end
endmodule
