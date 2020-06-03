# run freebayes on the v2.02-genome-mapped Dsim data, one chromosome arm at a
# time

CHR=$1

~/programs/freebayes/bin/freebayes \
  -f /localdisk/home/bjackso4/dros_dsim/reference/dsim-all-chromosome-r2.02.fasta \
  -L bam_list.txt \
  -r $CHR \
  -T 0.03 \
  --ploidy 2 \
  --no-population-priors \
  --report-monomorphic \
  --strict-vcf --gvcf > ${CHR}.g.vcf
