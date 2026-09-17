module counter_to_decoder (clk,rst,leds);
input clk,rst;
wire [3:0] count;
output [6:0] leds;

bcd_counter bcd_counter_dup (clk,rst,count);
decoder_7seg decoder_7seg_dup (count[3],count[2],count[1],count[0],leds[6],leds[5],leds[4],leds[3],leds[2],leds[1],leds[0]);

endmodule