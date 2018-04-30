#!/bin/bash
#SBATCH -t 1:00:00
#SBATCH -n 24
#SBATCH -p short

#Load modules to run python
module load eb
module load Miniconda2
source deactivate

# loading virtualen
echo "loading virtualenv"
source activate qiime1

# setting temporary directory
export TMPDIR=~/qiime_tmp

#compareweightedandunweightedUniFrac

compare_distance_matrices.py --method mantel -i cdout2/bdiv_even409/weighted_unifrac_dm.txt,cdout2/bdiv_even409/unweighted_unifrac_dm.txt -o furtheranalysis/mantel_out -n 999

# deactivate qiime
source deactivate

