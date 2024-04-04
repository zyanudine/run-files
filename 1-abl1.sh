mkdir -p seqs/200917_M00662_0358_000000000-G63G6/fq
rsync -alvs BaseSpace/Projects/PROJ390-ABL1-Run1/Samples/*/*/*fastq.gz seqs/200917_M00662_0358_000000000-G63G6/fq/
#cp BaseSpace/Projects/PROJ390-ABL1-Run1/Samples/*/*/*fastq.gz seqs/200917_M00662_0358_000000000-G63G6/fq/
gunzip seqs/200917_M00662_0358_000000000-G63G6/fq/*
nohup ./run-files/ABL1-miseq-bwamem-varscan-rover-G63G6-092120.sh
