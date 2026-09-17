module orGate_tb ;

reg X , Y ;
wire Z ;

orGate test_or (X,Y,Z) ;

initial
begin

# 20 X=0 ; Y=0 ;
# 20 X=0 ; Y=1 ;
# 20 X=1 ; Y=0 ;
# 20 X=1 ; Y=1 ;

end
endmodule