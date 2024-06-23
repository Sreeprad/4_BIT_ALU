# 4-bit ALU Design

This repository contains the design and implementation of a 4-bit Arithmetic Logic Unit (ALU) using Cadence Virtuoso tools. Below is an overview of the project and the tools used.

## Project Overview

This 4-bit ALU design is implemented using a simplistic and efficient approach. The schematic is created using Cadence Virtuoso, ensuring a streamlined design process. The ALU supports basic arithmetic and logic operations, including addition, AND, OR, and XOR functions.

## Tools and Methodologies

### Cadence Virtuoso
- **Schematic Design**: The schematic for the 4-bit ALU is drawn using the Cadence Virtuoso tool, providing a clear and organized layout.
- **Layout Design**: Custom layouts for each module are designed using the Virtuoso Layout Suite, ensuring optimized and efficient design.

### Spectre
- **Simulation and Verification**: The Spectre tool is utilized to verify the circuit's functionality through post-layout simulation, ensuring accurate and reliable results.

### System Verilog
- **Semi-Custom Design**: Alongside the full custom design, System Verilog code is written for a semi-custom design approach. The semi-custom design is implemented using Innovus and Genus tools.

## ALU Functionality

The ALU performs different functions based on the selection lines `SEL0` and `SEL1`. The functionality is defined as follows:

|  SEL1  |  SEL0  | Operation |
|--------|--------|-----------|
|   0    |   0    | ADD       |
|   0    |   1    | AND       |
|   1    |   0    | OR        |
|   1    |   1    | XOR       |

## Repository Contents

- **Design Codes**: All design codes are included for reference.
- **Files and Libraries**: Required files and design libraries are provided.
- **Images**: Relevant images of the schematics and layouts are added for better understanding.

## Collaboration

This project is a collaborative effort. We have contributed to the design and implementation, ensuring a robust and efficient ALU.

---

Feel free to explore the repository for detailed information and references on the design and implementation of the 4-bit ALU.