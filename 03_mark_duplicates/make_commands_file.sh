for FILE in ../02_sort_merge_out/*.bam
do
	echo "nice -n 19 ./run_mark_duplicates.sh ${FILE}" >> commands.txt
done
