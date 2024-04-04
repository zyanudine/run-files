mkdir -p seqs/230728_M00662_0447_000000000-GGPY7/fq
#rsync -avls BaseSpace/Projects/Incyte_18May2023_B6R1-1/Samples seqs/230728_M00662_0447_000000000-GGPY7/fq
find BaseSpace/Projects/ABL1-CBJA-Run41-27Jul2023_TL/Samples/*/*/*fastq.gz  -newermt "2023-07-30 00:00:00" > bs-files
cat bs-files | while read line; do echo "$line"; rsync -avls "$line" seqs/230728_M00662_0447_000000000-GGPY7/fq/; done
rm bs-files -f
gunzip seqs/230728_M00662_0447_000000000-GGPY7/fq/*
nohup run-files/ABL1-miseq/ABL1-miseq-bwamem-varscan-rover-GGPY7-29JUL2023.sh
