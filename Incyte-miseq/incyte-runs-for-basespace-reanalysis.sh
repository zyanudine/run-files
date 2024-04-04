mkdir -p seqs/230518_M70777_0082_000000000-L29BN/fq
#rsync -avls BaseSpace/Projects/Incyte_18May2023_B6R1-1/Samples seqs/230518_M70777_0082_000000000-L29BN/fq
find BaseSpace/Projects/Incyte_18May2023_B6R1-1/Samples/*/*/*fastq.gz  -newermt "2023-05-21 16:52:50" > bs-files
cat bs-files | while read line; do echo "$line"; rsync -avls "$line" seqs/230518_M70777_0082_000000000-L29BN/fq/; done
rm bs-files -f
gunzip seqs/230518_M70777_0082_000000000-L29BN/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L29BN-081922.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L29BN-081922.sh

mkdir -p seqs/230518_M70771_0101_000000000-L28J4/fq
#rsync -avls BaseSpace/Projects/Incyte_18May2023_B6R1-2/Samples/*/*/*fastq.gz seqs/230518_M70771_0101_000000000-L28J4/fq/
find BaseSpace/Projects/Incyte_18May2023_B6R1-2/Samples/*/*/*fastq.gz  -newermt "2023-05-21 16:52:50" > bs-files
cat bs-files | while read line; do echo "$line"; rsync -avls "$line" seqs/230518_M70771_0101_000000000-L28J4/fq/; done
rm bs-files -f
gunzip seqs/230518_M70771_0101_000000000-L28J4/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L28J4-081922.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L28J4-081922.sh

mkdir -p seqs/230518_M00662_0438_000000000-L29FG/fq
#rsync -avls BaseSpace/Projects/Incyte_18May2023_B6R2-1/Samples/*/*/*fastq.gz seqs/230518_M00662_0438_000000000-L29FG/fq/
find BaseSpace/Projects/Incyte_18May2023_B6R2-1/Samples/*/*/*fastq.gz  -newermt "2023-05-21 16:52:50" > bs-files
cat bs-files | while read line; do echo "$line"; rsync -avls "$line" seqs/230518_M00662_0438_000000000-L29FG/fq/; done
rm bs-files -f
gunzip seqs/230518_M00662_0438_000000000-L29FG/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L29FG-081922.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L29FG-081922.sh

: '
#mkdir -p seqs/230522_M70777_0083_000000000-L2GFP/fq
#rsync -avls BaseSpace/Projects/Incyte_18May2023_B6R2-2/Samples/*/*/*fastq.gz seqs/230522_M70777_0083_000000000-L2GFP/fq/
#find BaseSpace/Projects/Incyte_18May2023_B6R2-2/Samples/*/*/*fastq.gz  -newermt "2023-05-21 16:52:50" > bs-files
#cat bs-files | while read line; do echo "$line"; rsync -avls "$line" seqs/230522_M70777_0083_000000000-L2GFP/fq/; done
#rm bs-files -f
#gunzip seqs/230522_M70777_0083_000000000-L2GFP/fq/*
#nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L2GFP-081922.sh
#nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L2GFP-081922.sh
'
