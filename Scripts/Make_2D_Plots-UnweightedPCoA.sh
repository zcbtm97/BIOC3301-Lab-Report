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

#makingunweighted2dplots

make_2d_plots.py -i cdout2/bdiv_even409/unweighted_unifrac_pc.txt -m map.tsv -o 2d_plotsUnweighted

#deactivate qiime
source deactivate

