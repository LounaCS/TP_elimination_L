# Copy raw data from the raw data directory to the preprocessing directory for further use.
cd ~/mydatalocal/TP_elimination_L
cp -r 1_raw_data/data/Projet_62_21/Fastq\ files/ 2_preprocessed_data/Fastq

# Move data to supress space from the directory name

cd 2_preprocessed_data/Fastq
mv Fastq\ files/ fastq_files/

# Rename files with more understandable names

cd fastq_files
mv Lib1_62_21_S1_R1_001.fastq.gz   1cell_rep1.fastq.gz 
mv Lib2_62_21_S2_R1_001.fastq.gz   1cell_rep2.fastq.gz  
mv Lib3_62_21_S3_R1_001.fastq.gz   2cells_rep1.fastq.gz 
mv Lib4_62_21_S4_R1_001.fastq.gz   2cells_rep2.fastq.gz 
mv Lib5_62_21_S5_R1_001.fastq.gz   4cells_rep1.fastq.gz 
mv Lib6_62_21_S6_R1_001.fastq.gz   4cells_rep2.fastq.gz 
mv Lib7_62_21_S7_R1_001.fastq.gz   8cells_rep1.fastq.gz 
mv Lib8_62-21_S8_R1_001.fastq.gz   8cells_rep2.fastq.gz 
mv Lib9_62_21_S9_R1_001.fastq.gz   8cells5h_rep1.fastq.gz
mv Lib10_62_21_S10_R1_001.fastq.gz 8cells5h_rep2.fastq.gz 
mv Lib11_62_21_S11_R1_001.fastq.gz 8cells7h_rep1.fastq.gz 
mv Lib12_62_21_S12_R1_001.fastq.gz 8cells7h_rep2.fastq.gz 
