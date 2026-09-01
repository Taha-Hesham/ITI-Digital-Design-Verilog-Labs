// ----------------- Encoder --------------------//
module decimal_to_binary_encoder(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,A,B,C,D);
input i0,i1,i2,i3,i4,i5,i6,i7,i8,i9;
output A,B,C,D;

assign
	A=i8|i9,
	B=i4|i5|i6|i7,
	C=i2|i3|i6|i7,
	D=i1|i3|i5|i7|i9;

endmodule
// --------------------------------------------------//

// ----------------- D-Flip Flop --------------------//
module d_ff (en, d, rstn, clk, q) ;
input [3:0] d;
input en,rstn, clk;
output reg [3:0] q;
always @ (posedge clk or negedge rstn)
	if (!rstn)
          q <= 0;
       else if(en)
          q <= d;
endmodule 
// --------------------------------------------------//

// ----------------- decoder_7seg --------------------//
module sevenSegments (bcd,dec);
input [3:0] bcd;
output reg [6:0] dec;
always@(bcd)
	begin 
		case(bcd)
			4'b0000 : dec = 7'b1111110; // 0
			4'b0001 : dec = 7'b0110000; // 1
			4'b0010 : dec = 7'b1101101; // 2
			4'b0011 : dec = 7'b1111001; // 3
			4'b0100 : dec = 7'b0110011; // 4
			4'b0101 : dec = 7'b1011011; // 5
			4'b0110 : dec = 7'b1011111; // 6
			4'b0111 : dec = 7'b1110000; // 7
			4'b1000 : dec = 7'b1111111; // 8
			4'b1001 : dec = 7'b1111011; // 9
			4'b1010 : dec = 7'b1110111; // A 
			4'b1011 : dec = 7'b1111111; // B
		default : dec = ~7'b1111110; //0 default  
		endcase 
	end
endmodule
// --------------------------------------------------//

// ----------------- Top Module --------------------//
module top_module (i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,sel,clk,rstn1,rstn2,rstn3,dec1,dec2,dec3);
input i0,i1,i2,i3,i4,i5,i6,i7,i8,i9;
wire A,B,C,D;
input [1:0] sel;
reg en1,en2,en3;
input clk;
input rstn1 , rstn2 , rstn3;
wire [3:0] q1,q2,q3;
output [6:0] dec1,dec2,dec3;

decimal_to_binary_encoder D_T_B (i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,A,B,C,D);
d_ff room_1 (en1, {A,B,C,D}, rstn1, clk, q1);
d_ff room_2 (en2, {A,B,C,D}, rstn2, clk, q2);
d_ff room_3 (en3, {A,B,C,D}, rstn3, clk, q3);

sevenSegments seg1(q1,dec1);
sevenSegments seg2(q2,dec2);
sevenSegments seg3(q3,dec3);

always @(*)
	begin
		en1=0; en2=0; en3=0;
		case (sel)
		2'b00: en1=1;
		2'b01: en2=1;
		2'b10: en3=1;
		default: begin
			 en1=0; en2=0; en3=0; 
			 end
		endcase
	end
endmodule
// --------------------------------------------------//