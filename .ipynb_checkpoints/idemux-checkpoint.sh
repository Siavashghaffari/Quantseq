#!/bin/bash

#SBATCH -p himem
#SBATCH --mem=256G
#SBATCH -c 8


ml spaces/gpy
ml gpydev/gpy38


idemux --r1 /gne/data/dnaseq/processed_runs/R9705/results/LIB5475659_SAM24438746_R1.fastq.gz --r2 /gne/data/dnaseq/processed_runs/R9705/results/LIB5475659_SAM24438746_R2.fastq.gz --sample-sheet ./QS-pool_samples_NGS5425_v2.csv --out /gstore/project/crc_recursion_2/NGS5425/Quantseq/ --i5-rc