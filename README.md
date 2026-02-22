# Counters & Shift Registers Project

This project demonstrates the design and simulation of two fundamental **sequential digital circuits** using **Verilog**:

1. **4-bit Synchronous Counter**
2. **4-bit Serial-In Shift Register**

Both modules include **testbenches** for simulation and verification.

---

## Features

### 4-bit Counter
- Increments a 4-bit binary number on each **clock pulse**
- Supports **synchronous reset**
- Demonstrates **overflow behavior** (wraps from 1111 → 0000)

### 4-bit Shift Register
- Shifts bits left on every clock pulse
- Accepts **serial input**
- Supports **synchronous reset**
- Demonstrates **serial-to-parallel data movement**

---

## Learning Outcomes

- Understanding **sequential logic circuits** (flip-flops, counters, registers)
- Writing and running **Verilog testbenches**
- Generating and interpreting **waveforms**
- Observing **clock-driven behavior** in digital circuits
- Foundational knowledge for **FPGA and VLSI projects**

---

## Simulation

- Run simulations using **EDA Playground** (https://www.edaplayground.com/)
- Select **Verilog** + **Icarus Verilog**
- Testbenches included:
  - `tb_counter_4bit.v`
  - `tb_shift_reg_4bit.v`
- Waveforms can be viewed using **GTKWave** or console output

---

## Project Structure

```text
Counters_ShiftRegisters_Project/
│
├── counter/
│   ├── counter_4bit.v
│   └── tb_counter_4bit.v
│
├── shift_register/
│   ├── shift_reg_4bit.v
│   └── tb_shift_reg_4bit.v
│
├── waveform_screenshots/    # Optional: GTKWave screenshots
└── README.md
