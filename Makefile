# Gera arquivos otimizados dos arquivos fonte do trabalho
all:
	yosys sim/scripts/control_machine.ys
	yosys sim/scripts/d_slp_counter.ys

# Gera simulacao
simulation:
	iverilog -o sim/adc.simul sim/adc_dual_slope_tb.v

# Executa simulacao
run:
	@./sim/adc.simul
	@gtkwave sim/vcd/adc_dual_slope.vcd

clean:
	rm -f sim/*.simul
	rm -f sim/vcd/*.vcd
	rm -f sim/src/*.v
