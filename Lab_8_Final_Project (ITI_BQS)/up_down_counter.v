`timescale 10ns / 1ns
//###############################################################################
/* ITI Verilog Course 
 AUTHOR:  Assoc.Prof. Ahmed Shalaby,	 DATE:	11/2025
 https://bu.edu.eg/staff/ahmedshalaby14
 Project: ITIBQS
 Module Name :   upDownCounter 
 Description:   counter that count the number of customers according to 
 photocell sensors at both ends of the queue. 
*/
//###############################################################################
/* ------------------------  Module Declarations ----------------------------- */
module upDownCounter ( rstn,clk,enable,upDown,pCount);
// ------------------------ Parameter Declarations --------------------------- //
parameter counterwidth = 3;
// -------------------------- Inputs Declarations ---------------------------- //
input rstn,clk;
// enable signal for counting 
input enable; 
// control signal for counting up or down
input upDown;
// ------------------------- Outputs Declarations ---------------------------- //
output reg [counterwidth-1:0] pCount;
// --------------------------- Wire Declarations ----------------------------- //
// ---------------------------- Reg Declarations ----------------------------- //
// --------------------------------------------------------------------------- //
// ---------------------------- Initial setup  ------------------------------- //
// --------------------------------------------------------------------------- //
// ------------------------- Instantiation Modules --------------------------- //
// --------------------------------------------------------------------------- //
// ----------------------- Combinational Logic  ------------------------------ //
// --------------------------------------------------------------------------- //
// ----------------------- Sequential  Logic  -------------------------------- //
always@(posedge clk, negedge rstn)
	begin
		if (~rstn)
			// the output of counter is zero at negative reset
			pCount <= 0;
		else
			begin
				if (enable) // enable counting 
					begin
						// counting up or down based on the the control signal 
						if (upDown) 
							pCount <= pCount + 1; // count up 
						else
							pCount <= pCount - 1; // count down
					end
				else
					pCount <= pCount; // no change as enable signal is disabled. 
			end
	end   
// --------------------------------------------------------------------------- //
// --------------------------------------------------------------------------- //
endmodule
// ----------------------------- End of File --------------------------------- //
 

 
  
