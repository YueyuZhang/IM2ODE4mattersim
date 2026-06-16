# IM2ODE4mattersim

Inverse Design of Materials by Multi-objective Optimization with MatterSim ML force field.

## Overview

This is a modified version of IM2ODE that integrates MatterSim, a graph neural network
force field for fast and accurate materials simulations.

## Requirements

- GNU make
- Fortran compiler
- Python 3.8+
- MatterSim (ML force field)
- ASE (Atomic Simulation Environment)

## Installation

`ash
git clone https://github.com/YueyuZhang/IM2ODE4mattersim.git
cd IM2ODE4mattersim
make
`

## Quick Start

`ash
# Run TiO2 structure search example
cd examples/TiO2_12atoms
bash run.sh
`

## Available Examples

All examples use MatterSim ML force field:

| Example | System | Atoms | Type |
|---------|--------|-------|------|
| **TiO2_12atoms** | Bulk TiO2 | 12 | 3D periodic |
| **Au20_cluster** | Gold nanocluster | 20 | 0D cluster |
| **FeSe_2D** | FeSe monolayer | 8 | 2D material |

## Integration Details

The MatterSim integration works as follows:

1. Fortran code writes structure to POSCAR format
2. 
un_mattersim.py reads structure and runs MatterSim
3. Energy and forces are written back
4. Fortran code continues optimization

## Files Modified/Added

- 
un_mattersim.F90 - Fortran interface
- 
un_mattersim.py - Python MatterSim calculator
- Makefile - Updated compilation
- Multiple example configurations

## Citation

Original IM2ODE paper:
- Zhang YY et al. Comp. Mater. Sci. 98, 51-55 (2015)

## License

LGPL
