# trim the two fastq files that i trimmed in 2015 when I mapped them to
# DsimV2, using the same commands:

# MD233:

gunzip ../andolfatto/SRR1943276_1.fastq.gz
gunzip ../andolfatto/SRR1943276_2.fastq.gz

perl ~/programs/popoolation_1.2.2/basic-pipeline/trim-fastq.pl \
  --input1 ../andolfatto/SRR1943276_1.fastq \
  --input2 ../andolfatto/SRR1943276_2.fastq \
  --fastq-type sanger \
  --output SRR1943276_72bpQ20.fastq \
  --discard-internal-N \
  --min-length 72 \
  --quality-threshold 20 &> SRR1943276_trim-fastq_72bpQ20.err.out

gzip ../andolfatto/SRR1943276_1.fastq
gzip ../andolfatto/SRR1943276_2.fastq

gzip SRR1943276_72bpQ20_1.fastq
gzip SRR1943276_72bpQ20_2.fastq

# MD15:

gunzip ../andolfatto/SRR1943291_1.fastq.gz
gunzip ../andolfatto/SRR1943291_2.fastq.gz

perl ~/programs/popoolation_1.2.2/basic-pipeline/trim-fastq.pl \
  --input1 ../andolfatto/SRR1943291_1.fastq \
  --input2 ../andolfatto/SRR1943291_2.fastq \
  --fastq-type sanger \
  --output SRR1943291_72bpQ20.fastq \
  --discard-internal-N \
  --min-length 72 \
  --quality-threshold 20 &> SRR1943291_trim-fastq_72bpQ20.err.out

gzip ../andolfatto/SRR1943291_1.fastq
gzip ../andolfatto/SRR1943291_2.fastq

gzip SRR1943291_72bpQ20_1.fastq
gzip SRR1943291_72bpQ20_2.fastq
