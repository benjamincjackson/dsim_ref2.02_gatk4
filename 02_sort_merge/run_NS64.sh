mkdir ../tmp/NS64
java -Xmx12G -Djava.io.tmpdir=../tmp/NS64 -jar ~/programs/picard-2.20.0/picard.jar MergeSamFiles \
INPUT=../01_map_out/ERR668310.bam \
OUTPUT=../02_sort_merge_out/NS64.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>../02_sort_merge_out/NS64.merged.sorted.bam.err
rm -rf ../tmp/NS64
