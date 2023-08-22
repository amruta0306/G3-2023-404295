#!/bin/bash
#SBATCH --job-name="unroot"   #name of this job
#SBATCH -p medium              #name of the partition (queue) you are submitting to
#SBATCH -N 1                  #number of nodes in this job
#SBATCH -n 40                 #number of cores/tasks in this job, you get all 20 physical cores with 2 threads per core with hyper-thre
#SBATCH -t 168:00:00           #time allocated for this job hours:mins:seconds
#SBATCH --mail-user=amruta03@iastate.edu   #enter your email address to receive emails
#SBATCH --mail-type=BEGIN,END,FAIL #will receive an email when job starts, ends or fails
#SBATCH -o "stdout.%j.%N"     # standard output, %j adds job number to output file name and %N adds the node name
#SBATCH -e "stderr.%j.%N"     #optional, prints our sta

module load mafft

mafft --auto all1.fa > Ga1P_aln.fa

/project/maize_ga1/bin/raxml-ng --all --msa Ga1P_aln.fa --model GTR+G --prefix X2 --seed 2 --threads 2 --bs-metric fbp,tbe
