#!/bin/bash
#SBATCH --job-name=M80_Parallel_lammps_N90_eps_11
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user="twanhooy@gmail.com"
#SBATCH --mail-type="ALL"
#SBATCH --partition="cpu-medium"
#SBATCH --time=23:59:00
#SBATCH --ntasks=4
#SBATCH --mem=10G
 

lmp -in in.N90_M_80_eps_11_zeta_1_parallel -pk omp 4 -sf omp