mkdir ../tmp/NS19
java -Xmx12G -Djava.io.tmpdir=../tmp/NS19 -jar ~/programs/picard-2.20.0/picard.jar MergeSamFiles \
INPUT=../01_map_out/ERR668306.bam \
OUTPUT=../02_sort_merge_out/NS19.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>../02_sort_merge_out/NS19.merged.sorted.bam.err
rm -rf ../tmp/NS19
