mkdir -p ~/mydatalocal/TP_elimination_L/3_processed_data/quantification/

INDEX=~/mydatalocal/TP_elimination_L/2_preprocessed_data/intermediary_results/quantification/index_belari/mesorhabditis_belari.index
LEN=522 # fragment length
SD=200 # standard deviation, that kallisto uses to correct the mapping success given the length of the fragments

for TRIM_FASTQ_GZ_FILE in ~/mydatalocal/TP_elimination_L/2_preprocessed_data/intermediary_results/trim_data/*gz
do
  TRIM_FASTQ_GZ_NAME=$(basename $TRIM_FASTQ_GZ_FILE)
  TRIM_FASTQ_GZ_PREFIX=${TRIM_FASTQ_GZ_NAME/_trim.fastq.gz}
  echo $TRIM_FASTQ_GZ_FILE
  echo $TRIM_FASTQ_GZ_NAME
  echo $TRIM_FASTQ_GZ_PREFIX
  
  OUT_QUANT_PREFIX="/home/rstudio/mydatalocal/TP_elimination_L/3_processed_data/quantification/${TRIM_FASTQ_GZ_PREFIX}"
  echo $OUT_QUANT_PREFIX
  echo $OUT_REPORTS_PREFIX
  
  mkdir -p "/home/rstudio/mydatalocal/TP_elimination_L/3_processed_data/quantification/${TRIM_FASTQ_GZ_PREFIX}/"
  echo hello

  echo kallisto quant -i ${INDEX} -t 7 \
                 --single -l ${LEN} -s ${SD} \
                 --bias \
                 -o ${OUT_QUANT_PREFIX} \
                 ${TRIM_FASTQ_GZ_FILE}
done
