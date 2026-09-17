# Bank Queue Management System (ITI_BQS)

## 📌 Project Overview
The **Bank Queue Management System (ITI_BQS)** is a comprehensive digital hardware solution designed to manage and track customer queues efficiently. Implemented from scratch using Verilog HDL, this project demonstrates advanced RTL modeling, hierarchical design integration, and robust functional verification.

## 📂 Repository Structure & Key Modules
This project utilizes a hierarchical RTL design approach. Below is the mapping of the system architecture to the specific source files in this repository:

* **`ITIBQS.v` (Top-Level Module):** The main wrapper that instantiates and wires all sub-modules together to form the complete queue management system.
* **`controllerFSM.v`:** A Finite State Machine that orchestrates the overall system states, data routing, and control signals.
* **`up_down_counter.v`:** Synchronous up/down counters precisely tracking the current number of waiting customers.
* **`waitTime_rom.v` & `waitTime_rom.txt`:** A localized memory unit initialized via text file, calculating the estimated waiting time for customers in Binary-Coded Decimal (BCD) format.
* **`edgeDetector.v` & `D_FF.v`:** Safely handles external asynchronous inputs (like teller buttons or ticket dispensers) by converting them into synchronized, single-cycle pulses to prevent timing violations.
* **`sevenSegmentsDecoder.v`:** Decodes the BCD outputs for direct interfacing with 7-segment physical displays.
* **`module.v`:** Contains structural definitions and auxiliary logic supporting the main modules.

## 🧪 Verification & Simulation (`ITIBQS_tb.v`)
A major focus of this project was placed on the testing phase to ensure the hardware behaves correctly under various real-world conditions. The `ITIBQS_tb.v` testbench was developed in ModelSim to validate:
* **Synchronous System Timing:** Ensuring all modules communicate perfectly across clock cycles and verifying pipeline latency.
* **Corner-Case Testing:** Rigorously testing extreme scenarios, including queue overflow (wrap-around limits), empty queue handling, and maximum capacity alarms.
* **Reset Behavior:** Accurately modeling and verifying asynchronous reset assertions and de-assertions.

## 📄 Documentation & Planning
* **`ITI_BQS Project .docx.pdf`:** Comprehensive project documentation, including block diagrams, state machine specifications, and system requirements.
* **`wtime.xlsx`:** The spreadsheet used to calculate and map the wait-time mathematical logic before translating it into the ROM lookup table.

## 🛠️ Technologies & Tools
* **Design Language:** Verilog HDL (Synthesizable RTL)
* **Simulation & Debugging:** ModelSim
* **Design Methodology:** Synchronous Logic, Finite State Machines (Moore/Mealy), Hierarchical Instantiation.
