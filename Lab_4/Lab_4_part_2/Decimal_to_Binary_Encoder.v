module decimal_to_binary_encoder(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,A,B,C,D);
input i0,i1,i2,i3,i4,i5,i6,i7,i8,i9;
output A,B,C,D;

assign
	A=i8|i9,
	B=i4|i5|i6|i7,
	C=i2|i3|i6|i7,
	D=i1|i3|i5|i7|i9;

endmodule
