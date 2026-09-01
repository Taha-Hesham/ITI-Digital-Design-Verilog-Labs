module one_hot_counter (clk,rst,count);
input clk,rst;
output reg [9:0] count ;
reg [1:0] state;

parameter s0 = 2'b00 ,
	  s1 = 2'b01 ,
	  s2 = 2'b10 ;

always @ (posedge clk , posedge rst)
begin
	if(rst) begin
	state <= s0;
	count <= 10'b0000000001 ;
	end

	else begin
	case (state)
	s0: state <= s1;
	s1: if(count != 10'b0100000000)
		count <= count <<1;
	    else begin
		count <= 10'b1000000000;
		state <= s2;
		 end
	s2: if(count != 10'b0000000010)
		count <= count >>1;
	    else begin
		count <= 10'b0000000001;
		state <= s1;
		 end
	default: begin
	state <= s0;
	count <= 10'b0000000001 ;
	end
	endcase
	end
end
endmodule

