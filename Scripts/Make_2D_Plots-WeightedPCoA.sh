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

#makingweighted2dplots

make_2d_plots.py -i cdout2/bdiv_even409/weighted_unifrac_pc.txt -m map.tsv -o 2d_plotsWeighted

#deactivate qiime
source deactivate
