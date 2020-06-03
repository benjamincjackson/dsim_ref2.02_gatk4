from pysam import VariantFile
import sys

input = sys.argv[1]
output = sys.argv[2]

vcf = VariantFile(input)
file_out = open(output, 'w')
file_out.write('chrom\tpos\tQUAL\n')
for record in vcf:
	if not record.qual:
		continue
	if not record.alts:
		continue
	if len(record.ref) > 1:
		continue
	if len(max(record.alts, key = len)) > 1:
		continue
	if '*' in record.alts:
		continue
		
	GTs = []
	for key in record.samples:
		GTs.append(record.samples[key]['GT'])
	if any([len(set(x)) > 1 for x in GTs]):
		continue
	GTs_flat = [i for sub in GTs for i in sub]
	if None in GTs_flat:
		continue

	file_out.write(record.chrom + '\t' + str(record.pos) + '\t' + str(round(record.qual)) + '\n')
file_out.close()
