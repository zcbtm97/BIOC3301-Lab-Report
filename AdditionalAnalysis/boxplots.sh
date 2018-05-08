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

#makingboxplots
make_distance_boxplots.py -d cdout2/bdiv_even409/weighted_unifrac_dm.txt -m map.tsv -f SamplePh -o furtheranalysis/weightedpHout

make_distance_boxplots.py -d cdout2/bdiv_even409/unweighted_unifrac_dm.txt -m map.tsv -f SamplePh -o furtheranalysis/unweightedpHout

# deactivate qiime
source deactivate

