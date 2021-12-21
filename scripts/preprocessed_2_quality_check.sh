# create output directory
mkdir -p intermediary_results/raw_quality

# for each file, run the analyses using 7 processors and put the analysis in the output directory
for FASTQ_GZ_FILES in data/fastq_files/*gz
do
  FASTQ_GZ_NAME=$(basename $FASTQ_GZ_FILES)
  echo $FASTQ_GZ_FILES
  
  fastqc $FASTQ_GZ_FILES -o intermediary_results/raw_quality -t 7
done


# test of string manipulation to rename files
for FASTQ_GZ_FILES in data/fastq_files/*gz
do
  FASTQ_GZ_NAME=$(basename $FASTQ_GZ_FILES)
  FASTQ_GZ_PREFIX=${FASTQ_GZ_NAME/.fastq.gz}
  echo $FASTQ_GZ_FILES
  echo $FASTQ_GZ_NAME
  echo $FASTQ_GZ_PREFIX
done
