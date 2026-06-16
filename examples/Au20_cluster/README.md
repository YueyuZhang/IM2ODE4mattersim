# Au20 Cluster Global Optimization

Global structure search for 20-atom gold cluster using MatterSim ML force field.

## Background

Gold clusters exhibit unique structural properties. The famous Au20 pyramid structure
is a well-known global minimum with tetrahedral geometry.

## System Specification

- **Composition**: 20 Au atoms
- **Box size**: 20 x 20 x 20 Angstrom (vacuum for cluster)
- **Population size**: 50 structures
- **Generations**: 100
- **Energy model**: MatterSim ML force field (GNN)

## Usage

`ash
cd examples/Au20_cluster
bash run.sh
`

## Expected Results

- Tetrahedral pyramid (global minimum, very stable)
- Various icosahedral structures
- Amorphous/liquid-like clusters at higher energies

## Calculator

This example uses MatterSim, a graph neural network potential trained on
density functional theory data. For metallic systems like gold clusters,
MatterSim provides accurate energies and forces at a fraction of DFT cost.

## References

- Phys. Rev. B 70, 235419 (2004) - Au20 pyramid structure
- MatterSim: Graph neural network for materials simulations
