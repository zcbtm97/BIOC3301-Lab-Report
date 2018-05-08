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

#makingheatmap

make_otu_heatmap.py -i cdout2/taxa_plots/table_mc409_sorted_L2.biom -o heatmap.pdf --color_scheme YlOrRd --suppress_row_clustering

# deactivate qiime
source deactivate

