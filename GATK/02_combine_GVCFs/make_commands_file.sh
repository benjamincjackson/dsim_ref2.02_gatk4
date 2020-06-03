for MYFILE in `ls *.list`
do
	echo "nice -n 19 ./run_combineGVCFs.sh" $MYFILE >> commands.txt
done
