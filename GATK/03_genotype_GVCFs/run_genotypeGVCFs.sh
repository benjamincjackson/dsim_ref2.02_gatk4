# Run genotypeGVCFs on the per-contig GVCFs produced by haplotype caller
# after merging them with combineGVCFs, which should speed things up

# Usage: run_genotypeGVCFs.sh {CONTIG.POP.combined.g.vcf.gz}

GVCFFILE=$1
TEMP=${GVCFFILE##*/}
CONTIG=`echo $TEMP | cut -d'.' -f1`
POP=`echo $TEMP | cut -d'.' -f2`

~/programs/gatk-4.1.6.0/gatk GenotypeGVCFs \
        --java-options "-Xmx16g" \
	-R ../../reference/dsim-all-chromosome-r2.02.fasta \
	-V $GVCFFILE \
	--include-non-variant-sites true \
	-O ../03_genotype_GVCFs_out/${CONTIG}.${POP}.g.vcf.gz \
	2> ../03_genotype_GVCFs_out/${CONTIG}.${POP}.err

