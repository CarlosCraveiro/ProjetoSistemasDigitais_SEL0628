`timescale 1 ns/100 ps

module control_machine( input start,
                        input clk,
                        input finished_counting,
                        input cap_discharged,
                        output ch_Vmeasured,
                        output ch_Vref,
                        output ch_Zero,
                        output load,
                        output reset,
                        output enable_counting);
  reg working;
  reg [3:0] next_phase;
  always @(posedge clk) begin
    // Inicializa sistema
    if(start) begin
      working = 1'b1; //Indica que o estado de funcionamento é Operante
      next_phase = 1; // Indica proxima fase
      reset = 1'b0; // Desabilita reset do contador
      ch_Zero = 1'b0; // Abre chave que descarrega o capacitor
    end
    
    // Logica com sistema inicializado
    if(working == 1'b1) begin
      if(next_phase == 1) begin
        enable_counting = 1'b1;
        next_phase = 2;
        ch_Vmeasured = 1'b1;
      end else if (next_phase == 2 && finished_counting) begin
        ch_Vmeasured = 1'b0;
        ch_Vref = 1'b1;
        next_phase = 3;
      end else if (next_phase == 3 && cap_discharged) begin
        enable_counting = 1'b0;
        load = 1'b1;
        ch_Vref = 1'b0;
        next_phase = 4;
      end else if (next_phase == 4) begin
        load = 1'b0;
        reset = 1'b1;
        ch_Zero = 1'b1;
        working = 1'b0;
      end 
    end
  end
endmodule
