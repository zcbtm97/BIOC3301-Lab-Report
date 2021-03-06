#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p short

#Load modules to run python
module load eb
module load Miniconda2
source deactivate

#loading virtualenv
echo "loading virtualenv"
source activate qiime1

#setting temporary directory
export TMPDIR=~/qiime_tmp

#joiningpairedends

join_paired_ends.py -m SeqPrep -f Read1.fastq.gz -r Read2.fastq.gz -b Index.fastq.gz -o joinedends15

#deactivate qiime
source deactivate
