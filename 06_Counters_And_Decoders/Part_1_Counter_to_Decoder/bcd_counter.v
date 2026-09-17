module bcd_counter (clk,rst,count);
input clk,rst;
output reg [3:0] count;

always @(posedge clk, posedge rst)
	begin
		if(rst)
		count <= 4'b0000;
		else if(count==9)
		count <= 4'b0000;
		else
		count <=count+1;
	end

endmodule
