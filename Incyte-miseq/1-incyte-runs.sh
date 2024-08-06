#!/bin/bash
mkdir -p seqs/240606_M70777_0141_000000000-LK69V/fq
rsync -avls BaseSpace/Projects/Incyte_Batch13_R1repeat_06Jun2024_TL/Samples/*/*/*fastq.gz seqs/240606_M70777_0141_000000000-LK69V/fq/
gunzip seqs/240606_M70777_0141_000000000-LK69V/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-LK69V-12JUN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-LK69V-12JUN2024.sh

mkdir -p seqs/240608_M70777_0142_000000000-LJBY2/fq
rsync -avls BaseSpace/Projects/Incyte_Batch13_R2_08Jun2024_TL/Samples/*/*/*fastq.gz seqs/240608_M70777_0142_000000000-LJBY2/fq/
gunzip seqs/240608_M70777_0142_000000000-LJBY2/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-LJBY2-12JUN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-LJBY2-12JUN2024.sh

mkdir -p seqs/240608_M70784_0031_000000000-LJBCC/fq
rsync -avls BaseSpace/Projects/Incyte_Batch13_R3_08Jun2024_TL/Samples/*/*/*fastq.gz seqs/240608_M70784_0031_000000000-LJBCC/fq/
gunzip seqs/240608_M70784_0031_000000000-LJBCC/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-LJBCC-12JUN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-LJBCC-12JUN2024.sh

