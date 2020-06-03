for MYFILE in ../02_combine_GVCFs_out/*combined*.gz
do
	echo "nice -n 19 ./run_genotypeGVCFs.sh" $MYFILE >> commands.txt
done
