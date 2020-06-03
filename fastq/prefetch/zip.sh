find . -name "*.fastq" | parallel "bgzip {}"
