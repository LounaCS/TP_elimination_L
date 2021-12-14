#execut via bash {nom du fichier}

# download data from the IGFL

wget -r -nH --user='igfl-UE_NGS_2021' --password='UE_NGS_2021'  ftp://sharegate-igfl.ens-lyon.fr/ -P data/




#cd data
#mv "Projet_62_21/Fastq files/" fastq_files/