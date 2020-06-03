# bwa takes ~6GB memory per run? Try running 20 at once?

parallel -j n_proc.txt :::: commands_jose.txt
