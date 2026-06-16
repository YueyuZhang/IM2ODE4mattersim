"""
MatterSim Interface for IM2ODE
This script is called from Fortran via system call
Input: POSCAR file
Output: energy.txt (total energy in eV) and CONTCAR (optimized structure)
"""
import sys
import os

def main():
    # Check if POSCAR exists
    if not os.path.exists('POSCAR'):
        print('ERROR: POSCAR not found')
        with open('energy.txt', 'w') as f:
            f.write('1000000.0\n')
        sys.exit(1)
    
    try:
        from ase.io import read, write
        from mattersim.forcefield import MatterSimCalculator
    except ImportError as e:
        print(f'ERROR: Import failed - {e}')
        with open('energy.txt', 'w') as f:
            f.write('1000000.0\n')
        sys.exit(1)
    
    try:
        # Read structure
        atoms = read('POSCAR')
        
        # Initialize MatterSim
        calc = MatterSimCalculator(
            checkpoint="mattersim-v1.0.0-1M.pth",
            device="cpu"
        )
        atoms.calc = calc
        
        # Calculate energy
        energy = atoms.get_potential_energy()
        
        # Save energy
        with open('energy.txt', 'w') as f:
            f.write(f'{energy:.6f}\n')
        
        # Save structure
        write('CONTCAR', atoms)
        
        print(f'Success! Energy = {energy:.6f} eV')
        
    except Exception as e:
        print(f'ERROR: {e}')
        with open('energy.txt', 'w') as f:
            f.write('1000000.0\n')
        sys.exit(1)

if __name__ == '__main__':
    main()
