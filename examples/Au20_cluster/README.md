# Au20 Cluster Global Optimization

Global structure search for 20-atom gold cluster using MatterSim ML force field.

## Background

Gold clusters exhibit unique structural properties. The famous Au20 pyramid structure
is a well-known global minimum with tetrahedral geometry.

## System Specification

- Composition: 20 Au atoms
- Box size: 20 x 20 x 20 Angstrom (vacuum for cluster)
- Population size: 50 structures
- Generations: 100
- Calculator: MatterSim

## Usage

Go to directory and run:
cp ../../de.x .
./de.x

## Expected Results

- Tetrahedral pyramid (global minimum, very stable)
- Various icosahedral structures
- Amorphous/liquid-like clusters at higher energies

