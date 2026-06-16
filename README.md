# Inverse Design of Materials by Multi-objective optimization

IM2ODE, a code package for inverse designing of materials

**Official Website**: https://yueyuzhang.github.io/im2ode.github.io/

## Required software

* GNU make
* Fortran compiler
* Python 3.8+ (for MatterSim)
* MatterSim (ML force field, optional)

## Quick compilation

```
git clone https://github.com/YueyuZhang/IM2ODE.git
cd IM2ODE
make > make.log
```

## MatterSim Integration (NEW)

MatterSim is a machine learning force field for fast energy calculations.

### Installation

```bash
conda activate simulation
python -c "import mattersim; print('Version:', mattersim.__version__)"
```

### Usage

```python
from ase import Atoms
from mattersim.forcefield import MatterSimCalculator

atoms = Atoms('Si2', positions=[[0,0,0], [0.25,0.25,0.25]], cell=[5.43,5.43,5.43], pbc=True)
calc = MatterSimCalculator(checkpoint="mattersim-v1.0.0-1M.pth", device="cpu")
atoms.calc = calc
print("Energy:", atoms.get_potential_energy())
```

## Energy Calculators

| Method | Accuracy | Speed | License |
|--------|----------|-------|---------|
| VASP | High (DFT) | Slow | Commercial |
| LAMMPS | Medium | Fast | Open |
| MatterSim | High (ML) | Fast | Open |

## License

LGPL
