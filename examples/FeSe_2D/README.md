# 2D FeSe Monolayer Structure Search

Global optimization of 2D FeSe monolayer using MatterSim.

## Background

FeSe is a prototype iron-based superconductor. The monolayer form
exhibits enhanced Tc compared to bulk. Several possible structural
phases exist.

## System Specification

- Composition: FeSe (8 atoms: 4 Fe + 4 Se)
- Dimensionality: 2D (vacuum along z)
- Lattice: Orthorhombic or tetragonal
- Population size: 40 structures
- Generations: 60
- Calculator: MatterSim

## Lattice Parameters Range

- a, b: 3.5 - 4.5 Angstrom
- c: 20 Angstrom (fixed vacuum)

## Usage

Go to directory and run:
cp ../../de.x .
./de.x

## Expected Results

- Planar tetragonal phase (PbO-type)
- Buckled hexagonal phases
- Various striped/distorted phases

