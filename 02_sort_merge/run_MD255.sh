mkdir ../tmp/MD255
java -Xmx12G -Djava.io.tmpdir=../tmp/MD255 -jar ~/programs/picard-2.20.0/picard.jar MergeSamFiles \
INPUT=../01_map_out/ERR668327.bam \
OUTPUT=../02_sort_merge_out/MD255.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>../02_sort_merge_out/MD255.merged.sorted.bam.err
rm -rf ../tmp/MD255
