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

#running core diversity analysis
core_diversity_analyses.py --recover_from_failure -o cdout2 -i otus2/otu_table.biom -m map.tsv -t otus2/97_otus.tree -e 409

#deactivate qiime
source deactivate
