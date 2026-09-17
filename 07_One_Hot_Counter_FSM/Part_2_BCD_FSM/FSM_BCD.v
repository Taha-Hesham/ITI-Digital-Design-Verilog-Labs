module fsm_BCD (clk,rst,count);
input clk,rst;
output reg [3:0] count ;
reg  state ; 

parameter s0= 1'b0,
	  s1= 1'b1;

always @(posedge clk ,posedge rst)
begin
	if(rst) begin
	count <= 4'b0000;
	state <= s1;
	end
	else begin
	case (state)
	s0: begin
	   	state <= s1;
	 	count <= 4'b0000;
	    end
	s1: begin
		if(count != 8)
		count <=count +1;
		else begin
		count <= 9;
		state <= s0;
	    end
	end
	default:begin
		count <= 4'b0000;
		state <= s1;
		end
	endcase

	end

end

endmodule
