~/programs/samtools-1.10/samtools faidx dsim-all-chromosome-r2.02.fasta
/localdisk/home/bjackso4/programs/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 index dsim-all-chromosome-r2.02.fasta
java -jar ~/programs/picard-2.20.0/picard.jar CreateSequenceDictionary \
	R=dsim-all-chromosome-r2.02.fasta \
	O=dsim-all-chromosome-r2.02.dict
