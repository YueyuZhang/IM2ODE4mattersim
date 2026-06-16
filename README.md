# IM2ODE4mattersim

Inverse Design of Materials by Multi-objective Optimization with MatterSim ML force field.

## Overview

This is a modified version of IM2ODE that integrates MatterSim, a graph neural network
force field for fast and accurate materials simulations.

## Requirements

- GNU make
- Fortran compiler (gfortran)
- Python 3.8+
- MatterSim (ML force field)
- ASE (Atomic Simulation Environment)

## Installation

### 1. Install MatterSim

`ash
conda activate simulation
pip install mattersim
`

### 2. Compile IM2ODE

`ash
git clone https://github.com/YueyuZhang/IM2ODE4mattersim.git
cd IM2ODE4mattersim
make
`

## Quick Start

`ash
conda activate simulation
cd examples/TiO2_12atoms
cp ../../de.x .
./de.x
`

## Examples

| Example | System | Atoms | Type |
|---------|--------|-------|------|
| TiO2_12atoms | Bulk TiO2 | 12 | 3D periodic |
| Au20_cluster | Gold cluster | 20 | 0D cluster |
| FeSe_2D | FeSe monolayer | 8 | 2D material |

## Files Modified/Added

### MatterSim integration:
- run_mattersim.F90 - Fortran interface
- run_mattersim.py - Python calculator wrapper

### Build:
- Makefile - Updated compilation

### Examples:
- examples/TiO2_12atoms/
- examples/Au20_cluster/
- examples/FeSe_2D/

## License
LGPL