mkdir -p seqs/200731_M70777_0008_000000000-J7TR4/fq
rsync -alvs BaseSpace/Projects/Incyte_p327_run10/Samples/*/*/*fastq.gz seqs/200731_M70777_0008_000000000-J7TR4/fq/
rsync -alvs BaseSpace/Projects/Incyte_p327_run10/Samples/*/*/*fastq.gz seqs/200731_M70777_0008_000000000-J7TR4/fq/
gunzip seqs/200731_M70777_0008_000000000-J7TR4/fq/*
nohup run-files/Incyte-miseq-bwamem-varscan-rover-J7TR4-080320.sh
nohup run-files/Incyte-miseq-pindel-J7TR4-080320.sh

mkdir -p seqs/200731_M70771_0009_000000000-J7TCD/fq
rsync -avls BaseSpace/Projects/Incyte_p327_run11/Samples/*/*/*fastq.gz seqs/200731_M70771_0009_000000000-J7TCD/fq/
rsync -avls BaseSpace/Projects/Incyte_p327_run11/Samples/*/*/*fastq.gz seqs/200731_M70771_0009_000000000-J7TCD/fq/
gunzip seqs/200731_M70771_0009_000000000-J7TCD/fq/*
nohup run-files/Incyte-miseq-bwamem-varscan-rover-J7TCD-080320.sh
nohup run-files/Incyte-miseq-pindel-J7TCD-080320.sh
