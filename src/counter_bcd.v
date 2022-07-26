`timescale 1 ns/100 ps

module counter_bcd(   input clk,
                      input enable,
                      input reset,
                      output reg [3:0] bcd,
                      output cnt_9);
  initial begin
    bcd = 0;
    cnt_9 = 0;
  end
  always @(posedge clk) begin
    if (reset) begin
      bcd = 0;
      cnt_9 = 1'b0; 
    end else if (enable) begin
      // Count from 0 to 9 
      if (bcd == 9) begin
        bcd = 0;
      end else begin
        bcd++;
      end
      
      // Enable or not the next block
      cnt_9 = (bcd == 9)? 1'b1 : 1'b0;
    end 
  end 
endmodule
