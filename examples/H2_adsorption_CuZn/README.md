# H2 Adsorption on CuZn Surface

Global optimization of H atom adsorption sites on CuZn brass surface
using MatterSim ML force field.

## System Description

This is a surface catalysis example:
- Substrate: CuZn brass (7-layer slab)
- Adsorbate: 1 H atom
- Total: 40 atoms (36 Cu + 3 Zn + 1 H)
- Vacuum: ~15 Angstrom along z-direction

## System Specification

- Composition: Cu36Zn3H1 (40 atoms)
- Lattice: Orthorhombic slab (fixed substrate atoms)
- Population size: 10 structures
- Generations: 3 (for quick test, increase to 20-50 for real search)
- Calculator: MatterSim ML force field

## Purpose

Find the most stable adsorption sites for H on CuZn alloy surface.
Typical adsorption sites:
- Top sites (on single atom)
- Bridge sites (between two atoms)
- Hollow sites (three-fold or four-fold)

## Usage

Go to example directory and run:
cp ../../de.x .
./de.x

## Files

- struct.in: Structure definition with fixed substrate atoms
- de.in: DE algorithm parameters
- POSCAR1-POSCAR10: Initial structures
