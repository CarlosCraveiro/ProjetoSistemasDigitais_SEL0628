`timescale 1 ns/100 ps

module reg_4bit ( input ld,
                  input clk,
                 input [3:0] d,
                 output [3:0] q);
  always @(negedge clk) begin
    if (ld) begin
      q = d;
    end else begin end // Implica em manter o valor de q como esta
  end
endmodule
