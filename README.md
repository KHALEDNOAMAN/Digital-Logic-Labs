# Digital Logic Labs

A collection of Verilog labs covering gates, arithmetic, sequential logic, counters, FSMs, and memory.

## Overview
11 digital logic lab assignments from basic gates to CPU design

## Features
Combinational circuits, sequential circuits, FSMs, counters, memory, datapath, basic CPU, VGA controller

## Architecture
Each lab is independent with source, testbench, and documentation

## Tech Stack
Verilog, Icarus Verilog, GTKWave

## How It Works
Write Verilog module -> Create testbench -> Simulate -> View waveforms

## Installation
Install Icarus Verilog: apt install iverilog gtkwave

## Usage
cd lab1_gates && iverilog -o sim src/*.v && vvp sim && gtkwave dump.vcd

## Project Structure
lab1_gates/ through lab11_protocols/, each with src/ and docs/

## Screenshots
ASCII waveform example

## Future
FPGA synthesis scripts, more complex processors, SystemVerilog migration