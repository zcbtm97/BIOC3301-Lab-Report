## BIOC3301-Lab-Report-Workflow

1.	Download sequencing data to Cartesius home directory. 

2.	Validate the mapping file with validate_mapping_file.py.

3.	Join paired-end reads with SeqPrep, using join_paired_ends.py to generate new read and updated index Fastq files for downstream analysis. 

4.	Demultiplex and quality filter data, based on unique barcodes with phred quality score 19, with split_libraries_fastq.py. 

5.	Pick OTUs with pick_closed_reference_otus.py, against Greengenes database, to generate BIOM table. 

6.	Core diversity analysis with core_diversity_analyses.py, to generate taxa summaries, rarefaction curves for alpha diversity and PCoA plots for beta diversity.

7.	Convert 3D PCoA plots to 2D using make_2D_plots.py to visualize beta diversity.

8.	Compare alpha diversity, using a non-parametric two-sample t-test, with compare_alpha_diversity.py. 

9.	Compare weighted and un-weighted UniFrac distance matrices using a partial mantel test, with compare_distance_matrices.py

10.	Compare categories with compare_categories.py to analyse statistical significance of variables on diversity. 
