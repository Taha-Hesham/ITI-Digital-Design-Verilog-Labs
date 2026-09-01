module full_adder_tb;
reg a,b,cin;
wire s0,cout;
full_adder F(a,b,cin,s0,cout);
initial
begin
    a=0; b=0; cin=0; 
#10 a=0; b=0; cin=1; 
#10 a=0; b=1; cin=0; 
#10 a=0; b=1; cin=1; 
#10 a=1; b=0; cin=0; 
#10 a=1; b=0; cin=1; 
#10 a=1; b=1; cin=0; 
#10 a=1; b=1; cin=1;  
end
endmodule
