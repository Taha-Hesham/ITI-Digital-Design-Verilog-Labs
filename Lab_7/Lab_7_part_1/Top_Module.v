module top_module (clk,rst,onehot);
input clk,rst;
wire newclk;
output [9:0] onehot ;

clock_div clock_div_dup (clk,rst,newclk);
one_hot_counter one_hot_counter_dup (newclk,rst,onehot);

endmodule