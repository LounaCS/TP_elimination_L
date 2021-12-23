# Differential genetic expression in Mesorhabditis belari related to genome elimination
*TP NGS 2021: genome elimination in Mesorhabditis belari.*

# Biological context
Some organisms eliminates part of their genome during development. 
For *Mesorhabditis belari*, this genome elimination happens in five events between the stades 2- and 15-cells in all soma cells. The first genome elimination events happen between the 4- and 8-cells stades during embryogenesis.
The part of the genome that is eliminated is always the same. 
As yet, the function of genome elimination is still unknown. Some hypotheses have been made concerning the energetical trade-off between genome elimination and  cell maintenance, or related to the cell size. The genes involved in this genome elimination are yet not known.


Here, we investigate the gene putatively involved in genome elimination, by comparing transcriptomes before, during and after the firsts events of genome elimination.


Samples were obtained from *Mesorhabditis belari* embryos at different stades:
1,2,4,8 cells, then 5h and 7h after the 8 cells stade in duplicate.
We gather in this repository scripts used to analyse the differencial genetic expression of *Mesorhabditis belari* between samples, in order to identify variations in gene expression during gene elimination.


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

# Method: timeline of the analysis

## Preprocessing data: cleaning data for the pseudo-mapping
 - **renaming:** the imported files names used space and unclear names. We copy the Fastq files in the *preprocessing directory* under more informative names.
 - **(quality analysis pre-cleaning):** *not done* run the [fastqc tool](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/3%20Analysis%20Modules/) and performs a series of tests (analysis modules) on the raw data files. The GC content of the reads showed a multimodal distribution, which is surprising but does not hamper the analyses.
 - **data cleaning:** based on the quality analysis report, we limited the reads length to 82 bp for reads with phred scores $\geq 30$.
 - **quality analysis post-cleaning:** aggregates the reports of all samples in one reader-friendly file using the [multiqc](https://multiqc.info/docs/) method. 
 - **download of the annotated genome** of *M.belari* from the wormbase paraSite database. The annoted coding sequences (cds) will be used for the index construction.
 - **index construction:** construction of a transcription index using [kallisto](https://pachterlab.github.io/kallisto/about.html). The index is based on cds (coding sequences) of *M.belari*, and will be used for the pseudomapping of the samples reads.


at the end of this step, the *preprocessing directory* contains 
- an *intermediary results* directory with the quality analysis for each sample, 
- a *trim data* directory with the cleaned reads files, and
- a *report triming* directory with the post-cleaning quality analysis report.
- a *cds belari* directory containing the annotated genome and the index.

## Processing data: construction of the count matrix
 - **pseudomapping:** using kallisto to pseudomap each samples on the constructed index, with single end reads. We provide arbitrary length and standard deviation of the fragment length based on the sequencing quality analysis.
 - **aggregating report:** gathering the pseudomapping data of each sample in one single file. The aggregating report revealed a low mapping ratio (less than 30%). Hypotheses such as contamination, scarcely annotated genome were ruled out. There is a possibility that the Kallisto parameters (mean fragment length and standard deviation) might impact the mapping ratio.
 - **count matrix analyses:** we create and analyse the count matrix. Details concerning the method and the results are informed in the commented .Rmd file. A PCA was used to check the quality of the samples. Patterns of expression and genes with interesting functions were revealed among up- and down-regulated genes when comparing during and before/after genome elimination. Genes displaying similar patterns of expression were investigated for interactions in the CCSB interactome database using data from C.elegans.

### Group analyses (not in this repository)
- comparison between consecutive phases: are up/downregulating patterns more linear between consecutive developmental stades?
- comparison of expression patterns for highly conserved genes (e.g. actine genes) between *C.elegans* and *M.belari* (precluded the RAPToR analysis). To discriminate developmental effects from gene elimination effects, we can compare ortholog gene expression between *M.belari* and *C.elegans*. *C. elegans* does not display genome elimination. We verify that highly conserved genes have similar expression patterns: this is the case for some actine genes such as g17020, g20821, g22599, or g22058. In the next step, we try a more subtle comparison using RAPToR.


at the end of this step, the *processing directory* contains 
- a *quantification* directory with the pseudomapping counts for each sample

## Postprocessing: further analyses of the count matrix
 - **RAPToR download:** 
 - **RAPToR use:** to check the samples developmental stade via RAPToR, using homologous genes in C.elegans. The analysis was not conclusive, indicating that *C.elegans* and *M.belari* development may not be comparable. Indeed, transcription begins at stade 2-cells in *M-belari* whereas it begins at stade 4-cells in *C.elegans*.


# Perspectives
Given our mapping results, we could further investigate the mean fragment length (given as parameter for kallisto for the pseudomapping) impact on the mapping results.
Some genes showed significant up-regulation during the genome elimination and interactions. Their functions and products' localisations can be further investigated. KO experiment for genes displaying interesting expression patterns might provide further insight in the genome elimination mechanisms.

# Credits
This project was conducted with Nina, Quentin, and Romane, under the supervision of Carine and Marie. Thanks!
