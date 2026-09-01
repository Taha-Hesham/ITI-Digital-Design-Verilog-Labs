// ------------------- Full Adder ---------------------//
module full_adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire x1,a1,a2;
Xor g1(a,b,x1);
Xor g2(x1,cin,s);
And g3(cin,x1,a1);
And g4(a,b,a2);
Or g5(a1,a2,cout);
endmodule

// ------------------- Xor Gate ---------------------//
module Xor(a,b,f);
input a,b;
output f;
assign f=a^b;
endmodule

// ------------------- And ---------------------//
module And(a,b,f);
input a,b;
output f;
assign f=a&b;
endmodule

// ------------------- or ---------------------//
module Or(a,b,f);
input a,b;
output f;
assign f=a|b;
endmodule