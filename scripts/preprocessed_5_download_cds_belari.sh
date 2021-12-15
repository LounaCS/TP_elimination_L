mkdir -p 2_preprocessed_data/cds_belari

wget https://ftp.ebi.ac.uk/pub/databases/wormbase/parasite/releases/WBPS16/species/mesorhabditis_belari/PRJEB30104/mesorhabditis_belari.PRJEB30104.WBPS16.CDS_transcripts.fa.gz  \
-P ~/mydatalocal/TP_elimination_L/2_preprocessed_data/cds_belari

gunzip ~/mydatalocal/TP_elimination_L/2_preprocessed_data/cds_belari/mesorhabditis_belari.PRJEB30104.WBPS16.CDS_transcripts.fa.gz