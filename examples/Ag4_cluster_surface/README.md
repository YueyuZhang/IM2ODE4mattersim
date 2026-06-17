# Ag4 Cluster on C-N Surface

Global optimization of Ag4 nanocluster adsorption on C-N surface
using MatterSim ML force field.

## System Description

This is a cluster-surface interaction example:
- Substrate: C-N surface (70 C atoms + 1 N atom, FIXED)
- Adsorbate: Ag4 cluster (4 movable Ag atoms)
- Total: 75 atoms
- Lattice: Hexagonal (14.8 x 14.8 x 20 Angstrom)

## System Specification

- Composition: C70 N1 Ag4 (75 atoms total)
- Population size: 10 structures
- Generations: 10 (for quick test, can increase to 30-50)
- Calculator: MatterSim ML force field
- Selective Dynamics: T (substrate fixed, only cluster moves)

## Features

- Cluster-substrate interaction
- Searching stable adsorption sites and configurations
- Fixed substrate atoms (FFF)
- Cluster atoms fully movable (no constraints)

## Usage

Go to example directory and run:
cp ../../de.x .
./de.x

## Expected Configurations

Ag4 cluster may adopt:
- Tetrahedral configuration (bulk-like)
- Planar configuration (surface induced)
- Various distorted geometries
- Different adsorption sites (top, bridge, hollow)
