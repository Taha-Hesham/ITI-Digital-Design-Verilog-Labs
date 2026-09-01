// ----------------- counter_div_10 --------------------//
module counter_div_10 (clk,rst,count,carry);

input clk,rst;
output reg [3:0] count;
output carry;

assign carry = (count == 9);

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
// --------------------------------------------------//


// ----------------- counter_div_6 --------------------//
module counter_div_6 (clk,rst,carry,count);

input clk,rst,carry;
output reg [3:0] count;

always @(posedge clk, posedge rst)
	begin
		if(rst)
		count <= 4'b0000;
		else if(carry == 1) 
			begin
				if(count == 5)
				count <= 4'b0000;
				else
				count <= count +1;
			end
	end

endmodule
// --------------------------------------------------//

// ----------------- decoder_7seg --------------------//
module decoder_7seg (A, B, C, D, led_a, led_b, led_c, led_d, led_e, led_f, led_g);

input A, B, C, D;
output led_a, led_b, led_c, led_d, led_e, led_f,led_g; 
             

	assign
	 led_a = A | C | (B&D) | (~B&~D),
	 led_b = (~B) | (~C&~D) | (C&D),
	 led_c = B | ~C | D,
	 led_d =(~B&~D)| (C&~D)| (B&~C&D)| (~B&C) | A,
	 led_e = (~B&~D) | (C&~D),
	 led_f = A | (~C&~D) | (B&~C) | (B&~D),
	 led_g = A | (B&~C) | (~B&C) | (C&~D);


endmodule
// --------------------------------------------------//

// ----------------- top_module --------------------//
module top_module (clk,rst,dec_10 ,dec_6);
input clk,rst;
wire [3:0] count_div_10 ,count_div_6;
wire carry;
output [6:0] dec_10 ,dec_6;

counter_div_10 counter_div_10_dup(clk,rst,count_div_10,carry);
counter_div_6 counter_div_6_dup(clk,rst,carry,count_div_6);
decoder_7seg decoder_7seg_div_10(count_div_10[3],count_div_10[2],count_div_10[1],count_div_10[0],dec_10[6],dec_10[5],dec_10[4],dec_10[3],dec_10[2],dec_10[1],dec_10[0]);
decoder_7seg decoder_7seg_div_6(count_div_6[3],count_div_6[2],count_div_6[1],count_div_6[0],dec_6[6],dec_6[5],dec_6[4],dec_6[3],dec_6[2],dec_6[1],dec_6[0]);

endmodule
// --------------------------------------------------//


