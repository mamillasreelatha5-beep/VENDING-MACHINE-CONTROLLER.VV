# Vending Machine Controller using Verilog HDL

## Project Description

A Vending Machine Controller is a digital system that accepts coins from a user and dispenses a product once the required amount has been inserted. This project implements a simple vending machine using Verilog HDL and a Finite State Machine (FSM).

The vending machine accepts coins of value **5** and **10** units. The product costs **15** units. When the total inserted amount reaches or exceeds 15 units, the machine dispenses the product and resets to the initial state.

---

## Features

- FSM-based implementation
- Accepts 5-unit and 10-unit coins
- Product cost: 15 units
- Automatic reset after dispensing
- Synchronous operation with clock and reset

---

## Inputs

- `clk` – System clock
- `reset` – Active-high reset
- `coin5` – Insert 5-unit coin
- `coin10` – Insert 10-unit coin

## Outputs

- `dispense` – Goes HIGH when the product is dispensed

---

## State Diagram

| State | Amount |
|--------|--------|
| S0 | ₹0 |
| S5 | ₹5 |
| S10 | ₹10 |
| S15 | ₹15 (Dispense) |

---

## Files

- `vending_machine.v` – Verilog design
- `vending_machine_tb.v` – Testbench
- `output.txt` – Expected simulation output
- `README.md` – Project documentation

---

## Software Used

- Icarus Verilog
- ModelSim
- Xilinx Vivado

---

## How to Run

Compile:

```bash
iverilog vending_machine.v vending_machine_tb.v
```

Run:

```bash
vvp a.out
```

---

## Expected Output

```
Time Coin5 Coin10 Dispense
0      0      0       0
20     1      0       0
40     0      1       1
80     1      1       1
```

---

## Applications

- Automatic Vending Machines
- Ticket Dispensing Systems
- Coin-Operated Devices
- Embedded Control Systems

---

## Author

Your Name