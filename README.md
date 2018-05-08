## BIOC3301-Lab-Report-Data-Analysis-Workflow

1.	Download sequencing data to Cartesius home directory. 

 This will provide the mapping file and also the Index, Read1 and Read2 fastq files for downstream analysis. 

2.  Validate_mapping_file.py

 This will validate the sample metadata in the mapping file.

3.	join_paired_ends.py

 Using SeqPrep, this script joins the paired end read files to generate a joined read and an updated Index file for demultiplexing

4.  split_libraries_fastq.py 

 This script demultiplexes and quality filters the illumina Fastq sequencing data, and seperates samples using the unique barcodes, with phred quality score 19. 

5.	pick_closed_reference_otus.py

 This script allows OTU picking against the closed reference Greengenes database, to generate a BIOM table for further analysis. 

6.	core_diversity_analyses.py

 This script performs analysis of alpha and beta diversity to generate rarefaction curves and PCoA plots, respectively, in addition to generating taxa summaries.

7.	make_2D_plots.py

 This script converts 3D PCoA plots to 2D to allow improved visualization of beta diversity.

8.	compare_alpha_diversity.py 

 This script performs a non-parametric two-sample t-test, to assess alpha diversity of samples based on differences in a specific variable.

9.	compare_distance_matrices.py

 This script compares weighted and un-weighted UniFrac distance matrices using a partial mantel test, to produce R and P values.

10.	compare_categories.py

 This script analyses the statistical significance of variables on diversity, generating R and P values. 


# The "AdditionalAnalysis" folder contains other scripts, which were run to further analyse and assess sample data.  
