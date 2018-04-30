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

#comparingcategoriesforweighteddistances

compare_categories.py --method anosim -i updatedpcoa/weighted_unifrac_dm.txt -m map.tsv -c SamplePhosphorus -o statisticaltests/weightedanosim/anosim_P -n 999

compare_categories.py --method anosim -i updatedpcoa/weighted_unifrac_dm.txt -m map.tsv -c SampleNitrogen -o statisticaltests/weightedanosim/anosim_N -n 999

compare_categories.py --method anosim -i updatedpcoa/weighted_unifrac_dm.txt -m map.tsv -c SamplePotassium -o statisticaltests/weightedanosim/anosim_K -n 999

compare_categories.py --method anosim -i updatedpcoa/weighted_unifrac_dm.txt -m map.tsv -c SamplePh -o statisticaltests/weightedanosim/anosim_pH -n 999

compare_categories.py --method anosim -i updatedpcoa/weighted_unifrac_dm.txt -m map.tsv -c SampleDepth -o statisticaltests/weightedanosim/anosim_D -n 999

#deactivate qiime
source deactivate
