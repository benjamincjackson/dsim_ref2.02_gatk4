tail -n+2 PRJEB7673.txt | while read LINE
do
  SRR=`echo $LINE | cut -d' ' -f5`
  echo "fasterq-dump ${SRR} --skip-technical 2> ${SRR}.err; bgzip ${SRR}_1.fastq; bgzip ${SRR}_2.fastq" >> commands_fasterq-dump.txt
done
