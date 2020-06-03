for FILE in *fastq
do
  NEW=`echo $FILE | sed 's/.sra//g'`
  mv $FILE $NEW
done

