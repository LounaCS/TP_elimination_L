#execut via bash {nom du fichier}



# download data from the IGFL
wget -r -nH --user='igfl-UE_NGS_2021' --password='UE_NGS_2021'  ftp://sharegate-igfl.ens-lyon.fr/ -P data/

# move data in the good directory
mv data 1_raw_data/