module top_semaforo(input wire clk, input wire rst,  input wire e, input wire speed_sel, output wire [1:0] luz);
	wire tick_clk;

	tick_generator TICK (.clk(clk), .rst(rst), .e(e), .speed_sel(speed_sel), .tick(tick_clk));
	Semaforo SEM(.clk(tick_clk), .rst(rst), .luz(luz));
endmodule