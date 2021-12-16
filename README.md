# TP_elimination
*TP NGS 2021: genome elimination in Mesorhabditis belari.*

# Project
*Mesorhabditis belari* robustly eliminates part of its genome in its soma cells between the 4- and 8-cells stade during embryogenesis. The genes involved in this genome elimination are yet not known.
We gather here scripts used to analyse the differencial genetic expression of *Mesorhabditis belari*, in order to identify variations in gene expression during the event(s) of gene elimination.

Samples were obtained from *Mesorhabditis belari* embryos at different stades:
1,2,4,8 cells, then 5h and 7h after the 8 cells stade in duplicate.


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
 - renaming: the imported files names used space and unclear names. We renamed the directories and files.
 - (quality analysis): *not done*
 - data cleaning: after quality analysis, we limited the reads length to 82 bp for reads with phred scores $\geq 30$.
 - download the annotated genome of *M.belari*
 - index construction: We construct an index of cds (coding sequences) of *M.belari* for the pseudomapping

## Processing data
 - pseudomapping: We used Kallisto to pseudomap each samples on the constructed index
 - aggregating report: gathering of pseudomapping data of each sample in one file
 - count matrix analyses: We created and analysed the count matrix (for more details see the .Rmd file)

## Postprocessing
 - checking the samples developmental stade via RAPToR
 - identification of upregulated genes, down-regulated genes



significativité: on a regardé les gènes qui étaient le plus up ou downrégulés en différence d'expression, maintenant on regarde les gènes dont le profil d'expression est le plus reproduit/le mieux partagé parmi les cellules



# Further questions
- comparison between consecutive phases: more linear in up/downregulated?
- does the mean fragment length (given as parameter for kallisto for the pseudomapping) impact the results?


