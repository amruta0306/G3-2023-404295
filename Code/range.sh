#!/bin/bash
	
#SBATCH --time=48:00:00   # walltime limit (HH:MM:SS)
#SBATCH --nodes=5   # number of nodes
#SBATCH --ntasks-per-node=16   # 16 processor core(s) per node
#SBATCH --mail-user=amruta03@iastate.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

#SBATCH --job-name='CML247_mummer'

module load mummer/3.23
module load gnuplot

mummerplot -x "[5679013,13737742]" -y "[5679013,13737742]" --png --small B73.Ky21.masked.delta  --color --prefix B73.Ky21
