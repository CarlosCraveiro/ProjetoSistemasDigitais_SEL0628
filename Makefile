# Gera arquivos otimizados dos arquivos fonte do trabalho
all:
	yosys sim/scripts/control_machine.ys
	yosys sim/scripts/d_slp_counter.ys

# Gera simulacao
simulation:
	iverilog -o sim/adc.simul sim/adc_dual_slope_tb.v

rtl:
	yosys rtls/control_machine_rtl_gen.ys
	yosys rtls/d_slp_counter_rtl_gen.ys

# Executa simulacao
run:
	@./sim/adc.simul
	@gtkwave sim/vcd/adc_dual_slope.vcd

clean:
	rm -f sim/*.simul
	rm -f sim/vcd/*.vcd
	rm -f sim/src/*.v
