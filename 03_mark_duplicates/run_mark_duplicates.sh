
INFILE=$1
TEMP=${INFILE##*/}
SAMPLE=${TEMP%%.*}


mkdir ../tmp/${SAMPLE}

java -Xmx32G -Djava.io.tmpdir=../tmp/${SAMPLE} -jar ~/programs/picard-2.20.0/picard.jar MarkDuplicates \
	INPUT=$INFILE \
	OUTPUT=../03_mark_duplicates_out/${SAMPLE}.merged.sorted.dedupped.bam \
	CREATE_INDEX=true \
	METRICS_FILE=../03_mark_duplicates_out/${SAMPLE}.merged.sorted.dedupped.bam.metrics \
	MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=1000 \
	2>../03_mark_duplicates_out/${SAMPLE}.merged.sorted.dedupped.bam.err

rm -rf ../tmp/${SAMPLE}
