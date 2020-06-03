# Map each Dsim fastq file to the v2.02 reference sequence

## For Jose's data:
# SM can come straight from the sample file table downloaded from ENA
# There is one library per sample, so library ID can just be set to the sample ID
# PL is 'ILLUMINA'
# ID can be the EBI accession ('ERR...') (MD225 is the only sample with > 1 sequencing run)
##
# This seems to be the same as the Andofatto data - the methods in Rogers et al suggest one 
# library per lane 

REFERENCE=$1
INFILE_1=$2
INFILE_2=$3
ID=$4
LB=$5
SM=$6
OUTFILE=$7

~/programs/bwa/bwa mem -t2 -M $REFERENCE $INFILE_1 $INFILE_2 -R "@RG\tID:${ID}\tLB:${LB}\tPL:ILLUMINA\tSM:${SM}" 2> ${OUTFILE}.err |\
	~/programs/samtools-1.10/samtools view -b > $OUTFILE


