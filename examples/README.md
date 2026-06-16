# IM2ODE Examples

Collection of examples using IM2ODE with MatterSim ML force field.

## Available Examples

### 1. TiO2_12atoms
Global structure search for TiO2 polymorphs
- Calculator: MatterSim ML force field
- Composition: 4 Ti + 8 O = 12 atoms
- Target: Bulk TiO2 phases (rutile, anatase, etc.)

### 2. Au20_cluster
Global optimization of 20-atom gold nanocluster
- Calculator: MatterSim ML force field
- Composition: 20 Au atoms
- Target: Tetrahedral pyramid structure (global minimum)

### 3. FeSe_2D
2D FeSe monolayer structure search
- Calculator: MatterSim ML force field
- Composition: 4 Fe + 4 Se = 8 atoms
- Target: FeSe monolayer phases

## Common Setup

All examples use:
- Differential Evolution (DE) algorithm
- MatterSim GNN force field
- Structure output in VASP POSCAR format

## Usage

Go to example directory and run:
cp ../../de.x .
./de.x

