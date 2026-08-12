# 4-Bit Johnson Counter Using Verilog

## Description

This project implements a 4-bit Johnson counter using Verilog HDL. A Johnson counter is a shift register in which the inverted output of the last flip-flop is connected back to the input of the first flip-flop.

## Objective

The objective is to design and simulate a 4-bit Johnson counter using Verilog HDL and verify its counting sequence using a testbench.

## Inputs

* `clk` – Clock signal
* `reset` – Reset signal

## Output

* `q[3:0]` – 4-bit counter output

## Working

The 4-bit Johnson counter uses a shift-register structure. The inverted value of the last bit is fed back to the first bit.

Starting from `0000`, the counter produces 8 unique states:

```text
0000 → 1000 → 1100 → 1110
     → 1111 → 0111 → 0011
     → 0001 → 0000
```

A 4-bit Johnson counter therefore has **2 × 4 = 8 states**.

## Project Files

* `README.md` – Project documentation
* `johnson_counter.v` – Verilog design code
* `johnson_counter_tb.v` – Testbench
* `simulation_output.txt` – Simulation results

## Tools Used

* Verilog HDL
* Xilinx Vivado / ModelSim / Icarus Verilog
* GitHub

## Applications

* Digital counters
* Sequence generators
* Timing circuits
* Frequency division
* Control circuits
* FPGA-based digital systems

## Conclusion

The 4-bit Johnson counter was successfully designed and simulated using Verilog HDL. The simulation verifies all 8 states of the Johnson counter sequence.
