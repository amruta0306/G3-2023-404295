#!/bin/bash

#SBATCH --time=48:00:00   # walltime limit (HH:MM:SS)
#SBATCH -p short
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=40   # 16 processor core(s) per node
#SBATCH --mail-user=amruta03@iastate.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

#SBATCH --job-name='repeats'

module load mummer/3.23

nucmer --maxmatch --nosimplify --prefix A188.long.masked.self A188.long.masked.fa A188.long.masked.fa 
