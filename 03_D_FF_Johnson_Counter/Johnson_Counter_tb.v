module johnson_counter_tb;
reg trstn,tclk;
wire [3:0] tq;
johnson_counter tjohnson_counter(,trstn,tclk,tq);

initial
begin
trstn=0; 
#10 trstn=1; tclk=1;
#10 tclk=0;
#10 tclk=1;
#10 tclk=1;
#10 tclk=0;
#10 tclk=1;
#10 trstn=0; 
end
endmodule
