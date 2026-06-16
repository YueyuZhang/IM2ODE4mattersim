# TiO2 12-atom Structure Search

Global structure search for TiO2 polymorphs using MatterSim ML force field.

## System Specification

- **Composition**: TiO2 (12 atoms total: 4 Ti + 8 O)
- **Volume range**: 150 - 250 Å³
- **Population size**: 30 structures
- **Generations**: 50

## Usage

`ash
# 1. Copy to working directory
cp -r examples/TiO2_12atoms .
cd TiO2_12atoms

# 2. Compile IM2ODE (if not already compiled)
cd ../..
make
cd -

# 3. Run calculation
../../de.x
`

## Expected Results

- Rutile (most stable)
- Anatase
- Brookite
- Various metastable phases

## Reference

For TiO2 phase diagrams, see:
- Materials Project: https://materialsproject.org
