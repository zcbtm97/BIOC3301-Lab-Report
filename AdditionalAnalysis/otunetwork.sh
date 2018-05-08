#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p short

#Load modules to run python
module load eb
module load Miniconda2
source deactivate

# loading virtualenv
echo "loading virtualenv"
source activate qiime1

# setting temporary directory
export TMPDIR=~/qiime_tmp

#makingotunetwork

make_otu_network.py -i otus2/otu_table.biom -m map.tsv -o furtheranalysis/otu_network

# deactivate qiime
source deactivate

