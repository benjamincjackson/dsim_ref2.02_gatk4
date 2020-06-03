mkdir ../tmp/NS89
java -Xmx12G -Djava.io.tmpdir=../tmp/NS89 -jar ~/programs/picard-2.20.0/picard.jar MergeSamFiles \
INPUT=../01_map_out/ERR668311.bam \
OUTPUT=../02_sort_merge_out/NS89.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>../02_sort_merge_out/NS89.merged.sorted.bam.err
rm -rf ../tmp/NS89
