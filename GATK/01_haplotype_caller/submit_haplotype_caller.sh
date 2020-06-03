# use parallel to run GATK HaplotypeCaller for every sample for each contig

# e.g. run four instances of the script at any given time using -j4
parallel -j n_proc.txt :::: commands.txt
