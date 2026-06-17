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

conda activate simulation
pip install mattersim

### 2. Compile IM2ODE4mattersim

git clone https://github.com/YueyuZhang/IM2ODE4mattersim.git
cd IM2ODE4mattersim
make

## Quick Start

conda activate simulation
cd examples/TiO2_12atoms
cp ../../de.x .
./de.x

## Examples

| Example | System | Atoms | Type |
|---------|--------|-------|------|
| TiO2_12atoms | Bulk TiO2 | 12 | 3D periodic |
| Au20_cluster | Gold nanocluster | 20 | 0D cluster |
| FeSe_2D | FeSe monolayer | 8 | 2D material |
| H2_adsorption_CuZn | H on CuZn surface | 40 | Surface catalysis |
| Ag4_cluster_surface | Ag4 on C-N surface | 75 | Cluster-surface |

## Files Modified/Added

### Core MatterSim integration:
- run_mattersim.F90 - Fortran interface module
- run_mattersim.py - Python calculator wrapper

### Build system:
- Makefile - Updated compilation

### Examples (5 total):
- examples/TiO2_12atoms/ - Bulk oxide search
- examples/Au20_cluster/ - Gold cluster optimization
- examples/FeSe_2D/ - 2D monolayer search
- examples/H2_adsorption_CuZn/ - Surface catalysis (atom)
- examples/Ag4_cluster_surface/ - Cluster-surface interaction

## License

LGPL
