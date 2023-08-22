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

mummerplot --postscript --large A188.long.masked.self.delta  --color --prefix A188.self.large.post
