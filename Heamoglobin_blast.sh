#!/bin/bash
#SBATCH --job-name=blast_hemo
#SBATCH --account=hpc2ncourses2026-013
#SBATCH --time=00:10:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --output=blast_hemo_%j.out
#SBATCH --error=blast_hemo_%j.err


blastp \
  -query P69905.fasta \
  -db /proj/nobackup/cddb_course/databases/swissprot/swissprot \
  -out hemo_blastp_local.txt \
  -outfmt 6 \
  -evalue 1e-5 \
  -num_threads 4 \
  -max_target_seqs 50

echo "BLAST complete: $(date)"

