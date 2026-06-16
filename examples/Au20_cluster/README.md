# Au20 Cluster Global Optimization

Global structure search for 20-atom gold cluster using Gupta potential (model shell).

## Background

Gold clusters exhibit unique structural properties. The famous Au20 pyramid structure
is a well-known global minimum with tetrahedral geometry.

## System Specification

- **Composition**: 20 Au atoms
- **Box size**: 20 x 20 x 20 Angstrom (vacuum for cluster)
- **Population size**: 50 structures
- **Generations**: 100
- **Energy model**: Gupta potential (embedded atom method)

## Usage

`ash
cd examples/Au20_cluster
bash run.sh
`

## Expected Results

- Tetrahedral pyramid (global minimum, very stable)
- Various icosahedral structures
- Amorphous/liquid-like clusters at higher energies

## References

- Phys. Rev. B 70, 235419 (2004) - Au20 pyramid
