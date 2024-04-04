# ls /mnt/win-hp/base_space    to check download folder
# mkdir -p seqs/161225_M00662_0113_000000000-AVGG9/fq
# cp -pr /mnt/win-hp/base_space/NVS_TMP_Run6_Repro_PF-34337311/*/*fastq.gz seqs/161225_M00662_0113_000000000-AVGG9/fq/
# use basespace name, no need to use miseq run name since only extract data

run=LOXO_SOW-5_VP_2-36145132
mkdir -p seqs/$run/fq
cp -pr /mnt/win-hp/base_space/$run/*/*fastq.gz seqs/$run/fq/

run=SOW-5_VP-36087081
mkdir -p seqs/$run/fq
cp -pr /mnt/win-hp/base_space/$run/*/*fastq.gz seqs/$run/fq/

run1=LOXO_SOW-5_VP_2-36145132
run2=SOW-5_VP-36087081
run=LOXO_SOW-5_VP
mkdir -p seqs/$run/fq
for file in `ls seqs/$run1/fq/*fastq*`  # fastq.gz or fastq gunziped
do
file=`basename $file`
x=${file%%.fastq*}
gunzip seqs/$run1/fq/$x.fastq.gz seqs/$run2/fq/$x.fastq.gz
echo seqs/$run1/fq/$x `wc seqs/$run1/fq/$x.fastq` seqs/$run2/fq/$x `wc seqs/$run2/fq/$x.fastq`  > seqs/$run/fq/stat.txt
cat seqs/$run1/fq/$x.fastq seqs/$run2/fq/$x.fastq >  seqs/$run/fq/$x.fastq
gzip seqs/$run/fq/$x.fastq
done


