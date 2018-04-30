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

#demultiplexing

split_libraries_fastq.py -m map.tsv -i joinedends15/seqprep_assembled.fastq.gz -b joinedends15/seqprep_assembled.fastq_barcodes.fastq -o dem1 -q 19 --rev_comp_barcode --rev_comp_mapping_barcodes 

#deactivate qiime
source deactivate
