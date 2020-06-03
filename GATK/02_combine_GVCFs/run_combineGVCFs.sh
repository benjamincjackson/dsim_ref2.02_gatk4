# combine each pop's sample gVCFs into one large gVCF for each contig,
# because this should speed up GenotypeGVCFs.

# Usage: run_combineGVCFs.sh {.listfile}

LISTFILE=$1
CONTIG=`echo $LISTFILE | cut -d'.' -f3`
POP=`echo $LISTFILE | cut -d'.' -f2`

~/programs/gatk-4.1.6.0/gatk CombineGVCFs \
  --java-options "-Xmx8g" \
  -R ../../reference/dsim-all-chromosome-r2.02.fasta \
  -V $LISTFILE \
  -O ../02_combine_GVCFs_out/${CONTIG}.${POP}.combined.g.vcf.gz \
  2> ../02_combine_GVCFs_out/${CONTIG}.${POP}.err
