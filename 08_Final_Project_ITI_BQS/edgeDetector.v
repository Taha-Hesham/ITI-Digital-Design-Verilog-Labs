`timescale 10ns / 1ns
//###############################################################################
/* ITI Verilog Course 
 AUTHOR:  Assoc.Prof. Ahmed Shalaby,	 DATE:	11/2025
 https://bu.edu.eg/staff/ahmedshalaby14
 Project: ITIBQS
 Module Name :  edgeDetector
 Description:   To detect entry or exit accurately, generate a single pulse 
 on the rising edge (or falling edge) of the photocell signal. 
 */
//###############################################################################
/* ------------------------  Module Declarations ----------------------------- */
module edgeDetector ( sensorInput, rstn, clk, edgeEvent);
// ------------------------ Parameter Declarations --------------------------- //
// -------------------------- Inputs Declarations ---------------------------- //
input sensorInput, rstn, clk;
// ------------------------- Outputs Declarations ---------------------------- //
output edgeEvent;
// --------------------------- Wire Declarations ----------------------------- //
wire delayInput;
// ---------------------------- Reg Declarations ----------------------------- //
// --------------------------------------------------------------------------- //
// ---------------------------- Initial setup  ------------------------------- //
// --------------------------------------------------------------------------- //
// ------------------------- Instantiation Modules --------------------------- //
// instantiat FF for daly [D_FF ( d, rstn, clk, q)]
D_FF delayUnit (sensorInput, rstn, clk, delayInput);
// --------------------------------------------------------------------------- //
// ----------------------- Combinational Logic  ------------------------------ //
assign edgeEvent = delayInput & ~sensorInput; 
// --------------------------------------------------------------------------- //
// ----------------------- Sequential  Logic  -------------------------------- //
// --------------------------------------------------------------------------- //
// --------------------------------------------------------------------------- //
endmodule
// ----------------------------- End of File --------------------------------- //
