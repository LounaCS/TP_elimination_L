# TP_elimination
*TP NGS 2021: genome elimination in Mesorhabditis belari.*

# Project
Sequencing of Mesorhabdities belari at differen
Those scripts are written to analyse the differencial genetic expression of *Mesorhabditis belari*, in order to identify genes expressed during the events of gene elimination

Samples were obtained from Mesorhabditis belari embryos at different stades:
*1,2,4,8 cells, then 5h and 7h after the 8 cells stade)* in duplicate.
The raw data are FastQ files of the 12 sampling sequencing.

# File organization



# Timeline of the analysis

##Preprocessing data
quality analysis,
data cleaning

##Processing data
mapping of the reads on the reference genome.


identification of upregulated genes

significativité: on a regardé les gènes qui étaient le plus up ou downrégulés en différence d'expression, maintenant on regarde les gènes dont le profil d'expression est le plus reproduit/le mieux partagé parmi les cellules



# Further questions
- what downregutated genes?
- quality of the samples (verify with known developmental-phase-specific genes)
- est-ce que exc@slors de l'élimination de gènes upregulés
- comparison between consecutive phases: more linear in up/downregulated?
- does the mean fragment length (given as parameter for kallisto for the pseudomapping) impact the results?