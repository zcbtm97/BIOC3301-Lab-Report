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

#module load R for statistical test
module load R

#setting temporary directory
export TMPDIR=~/qiime_tmp

#comparingcategoriesforunweighteddistances

compare_categories.py --method anosim -i updatedpcoa/unweighted_unifrac_dm.txt -m map.tsv -c SamplePh -o statisticaltests/unweightedanosim/anosim_pH -n 999

# deactivate qiime
source deactivate
