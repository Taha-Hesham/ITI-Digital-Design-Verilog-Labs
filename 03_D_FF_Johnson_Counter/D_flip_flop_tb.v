module d_ff_tb;
reg td,trstn,tclk;
wire tq;
d_ff td_ff(td,trstn,tclk,tq);

initial
begin
trstn=0;
#10 trstn=1; td=1; tclk=0;
#10 tclk=1;
#10 td=0; tclk=0;
#10 tclk=1;
#10 td=1; tclk=0;
#10 trstn=0;
end

initial
$monitor($time, ,trstn, ,td,tq);
endmodule
