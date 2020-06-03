mkdir ../tmp/MD251
java -Xmx12G -Djava.io.tmpdir=../tmp/MD251 -jar ~/programs/picard-2.20.0/picard.jar MergeSamFiles \
INPUT=../01_map_out/SRR1943279.bam \
OUTPUT=../02_sort_merge_out/MD251.merged.sorted.bam \
SORT_ORDER=coordinate \
USE_THREADING=true \
CREATE_INDEX=true \
2>../02_sort_merge_out/MD251.merged.sorted.bam.err
rm -rf ../tmp/MD251
