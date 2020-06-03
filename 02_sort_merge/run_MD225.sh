mkdir ../tmp/MD225
java -Xmx12G -Djava.io.tmpdir=../tmp/MD225 -jar ~/programs/picard-2.20.0/picard.jar MergeSamFiles \
INPUT=../01_map_out/ERR668322.bam \
INPUT=../01_map_out/ERR668323.bam \
OUTPUT=../02_sort_merge_out/MD225.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>../02_sort_merge_out/MD225.merged.sorted.bam.err
rm -rf ../tmp/MD225
