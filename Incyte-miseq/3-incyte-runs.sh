mkdir -p seqs/220817_M70777_0049_000000000-KHH29/fq
rsync -avls BaseSpace/Projects/Incyte_17aug2022-1/Samples/*/*/*fastq.gz seqs/220817_M70777_0049_000000000-KHH29/fq/
gunzip seqs/220817_M70777_0049_000000000-KHH29/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-KHH29-19AUG2022.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-KHH29-19AUG2022.sh
