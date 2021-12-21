# TP_elimination
*TP NGS 2021: genome elimination in Mesorhabditis belari.*

# Project
*Mesorhabditis belari* robustly eliminates part of its genome in its soma cells between the 4- and 8-cells stades during embryogenesis. The genes involved in this genome elimination are yet not known. Samples were obtained from *Mesorhabditis belari* embryos at different stades:
1,2,4,8 cells, then 5h and 7h after the 8 cells stade in duplicate.
We gather here scripts used to analyse the differencial genetic expression of *Mesorhabditis belari* between those samples, in order to identify variations in gene expression during the event(s) of gene elimination.




# File organization
> Raw data contains:
> - the FastQ files obtained from the 12 samples sequencing

> Preprocessing data contains:
> - the quality analysis of the raw sequences,
> - the cleaned sequences where low-quality head and tail were removed,
> - the index construction from the reference genome

> Processed data contains:
> - the count matrix,
> - the aggregating gathering data from all samples

> Postprocessed data contains:
> - files used for the samples developmental stade check

> Scripts contains:
> - all the scripts used in this analyses

# Timeline of the analysis

## Preprocessing data
 - **renaming:** the imported files names used space and unclear names. We copy the Fastq files in the *preprocessing directory* under more informative names.
 - **(quality analysis pre-cleaning):** *not done* run the [fastqc tool](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/3%20Analysis%20Modules/) and performs a series of tests (analysis modules) on the raw data files.
 - **data cleaning:** based on the quality analysis report, we limited the reads length to 82 bp for reads with phred scores $\geq 30$.
 - **quality analysis post-cleaning:** aggregates the reports of all samples in one reader-friendly file using the [multiqc](https://multiqc.info/docs/) method.
 - **download of the annotated genome** of *M.belari* from the wormbase paraSite database. The annoted coding sequences (cds) will be used for the index construction.
 - **index construction:** construction of a transcription index using [kallisto](https://pachterlab.github.io/kallisto/about.html). The index is based on cds (coding sequences) of *M.belari*, and will be used for the pseudomapping of the samples reads.


at the end of this step, the *preprocessing directory* contains 
- an *intermediary results* directory with the quality analysis for each sample, 
- a *trim data* directory with the cleaned reads files, and
- a *report triming* directory with the post-cleaning quality analysis report.
- a *cds belari* directory containing the annotated genome and the index.

## Processing data
 - **pseudomapping:** using kallisto to pseudomap each samples on the constructed index, with single end reads. We provide arbitrary length and standard deviation of the fragment length based on the sequencing quality analysis.
 - **aggregating report:** gathering the pseudomapping data of each sample in one single file.
 - **count matrix analyses:** we create and analyse the count matrix (for more details see the commented .Rmd file)


at the end of this step, the *processing directory* contains 
- a *quantification* directory with the pseudomapping counts for each sample


## Postprocessing
 - **RAPToR download:** 
 - **RAPToR use:** to check the samples developmental stade via RAPToR, using homologous genes in C.elegans. The analysis was not conclusive, indicating that *C.elegans* and *M.belari* development may not be comparable.


# Further questions - group analysis
- comparison between consecutive phases: are up/downregulating patterns more linear between consecutive developmental stades?
- comparison of expression patterns for highly conserved genes (e.g. actine genes) between *C.elegans* and *M.belari* (precluded the RAPToR analysis).
- does the mean fragment length (given as parameter for kallisto for the pseudomapping) impact the results?


