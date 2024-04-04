mkdir -p seqs/220815_M70777_0048_000000000-KHF2H/fq
rsync -avls BaseSpace/Projects/Incyte_15aug2022-1/Samples/*/*/*fastq.gz seqs/220815_M70777_0048_000000000-KHF2H/fq/
gunzip seqs/220815_M70777_0048_000000000-KHF2H/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-KHF2H-19AUG2022.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-KHF2H-19AUG2022.sh

