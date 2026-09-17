# Digital Design & Hardware Verification Portfolio

A comprehensive collection of Digital System Design IP cores, RTL modules, and testbenches developed using Verilog HDL. This repository demonstrates a progression from basic logic gates to a fully verified hierarchical digital system.

## 📂 Repository Structure

* **`01_Basic_Logic_Gates`**: Basic AND/OR logic implementations.
* **`02_Multiplexer_Full_Adder`**:
  * `Part_1_Multiplexer`
  * `Part_2_Full_Adder`
* **`03_D_FF_Johnson_Counter`**: D Flip-Flop and Johnson Counter designs.
* **`04_Seven_Seg_Decoder_Encoder`**:
  * `Part_1_7_Segment_Decoder`
  * `Part_2_Decimal_to_Binary_Encoder`
* **`05_ALU_Keypad_Integration`**:
  * `Part_1_ALU_with_Decoder`
  * `Part_2_Keypad_Interface`
* **`06_Counters_And_Decoders`**:
  * `Part_1_Counter_to_Decoder`
  * `Part_2_Seconds_Counter`
* **`07_One_Hot_Counter_FSM`**:
  * `Part_1_One_Hot_Counter`
  * `Part_2_BCD_FSM`
* **`08_Final_Project_ITI_BQS`**: A complete Bank Queue Management System featuring hierarchical RTL modules (FSMs, up/down counters, wait-time ROM) and comprehensive ModelSim testbench verification for synchronous timing, edge detection, and corner cases.

## 🛠️ Technologies & Methodologies

* **Hardware Description Language (HDL):** Verilog
* **Simulation & Debugging:** ModelSim / QuestaSim
* **Design Concepts:** RTL Modeling, Synchronous/Asynchronous Design, Finite State Machines (FSM), Pipeline Latency
* **Verification:** Testbench Architecture, Corner-Case Testing, Timing Analysis

## 🚀 How to Run
1. Open ModelSim/QuestaSim and change the working directory to the specific module folder.
2. Compile the Verilog design and testbench files.
3. Run the simulation to verify the RTL behavior and observe the generated waveforms.