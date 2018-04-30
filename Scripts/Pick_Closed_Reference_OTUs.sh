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

#Picking closed reference OTUs

pick_closed_reference_otus.py -i dem1/seqs.fna -o otus2

#deactivate qiime
source deactivate
