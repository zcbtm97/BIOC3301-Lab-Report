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

#comparingalphadiversity

compare_alpha_diversity.py -i cdout2/arare_max409/alpha_div_collated/PD_whole_tree.txt -m map.tsv -c SamplePh -o furtheranalysis/comparealphaPHPD

compare_alpha_diversity.py -i cdout2/arare_max409/alpha_div_collated/PD_whole_tree.txt -m map.tsv -c SamplePhosphorus -o furtheranalysis/comparealphaPPD

# deactivate qiime
source deactivate
