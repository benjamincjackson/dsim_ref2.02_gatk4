# run haplotype caller on a chromosome for an individual,
# and output all sites with the BP_RESOLUTION argument

# USAGE:
# ./run_haplotype_caller.sh SAMPLEPATH(path) SAMPLE REGION

export LD_BIND_NOW=1

SAMPLEPATH=$1
SAMPLE=$2
REGION=$3

~/programs/gatk-4.1.6.0/gatk HaplotypeCaller \
  --java-options "-Xmx8g" \
  -R ../../reference/dsim-all-chromosome-r2.02.fasta \
  -I $SAMPLEPATH \
  -L $REGION \
  --heterozygosity 0.03 \
  --heterozygosity-stdev 0.1 \
  --output-mode EMIT_ALL_ACTIVE_SITES \
	--emit-ref-confidence BP_RESOLUTION \
	-O ../01_haplotype_caller_out/${SAMPLE}.${REGION}.g.vcf.gz \
	2> ../01_haplotype_caller_out/${SAMPLE}.${REGION}.err
