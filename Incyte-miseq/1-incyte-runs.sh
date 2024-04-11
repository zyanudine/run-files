#!/bin/bash
mkdir -p seqs/240409_M00662_0478_000000000-LCB2L/fq
rsync -avls BaseSpace/Projects/BMD_TruSight_TMP350_Batch5_R3_Run101_KD/Samples/*/*/*fastq.gz seqs/240409_M00662_0478_000000000-LCB2L/fq/
gunzip seqs/240409_M00662_0478_000000000-LCB2L/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-LCB2L-11APR2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-LCB2L-11APR2024.sh

mkdir -p seqs/240409_M70771_0157_000000000-LC8W6/fq
rsync -avls BaseSpace/Projects/BMD_TruSight_TMP350_Batch5_R2_Run100_KD/Samples/*/*/*fastq.gz seqs/240409_M70771_0157_000000000-LC8W6/fq/
gunzip seqs/240409_M70771_0157_000000000-LC8W6/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-LC8W6-11APR2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-LC8W6-11APR2024.sh

mkdir -p seqs/240409_M70784_0024_000000000-LC8T3/fq
rsync -avls BaseSpace/Projects/BMD_TruSight_TMP350_Batch2_R6_run98/Samples/*/*/*fastq.gz seqs/240409_M70784_0024_000000000-LC8T3/fq/
gunzip seqs/240409_M70784_0024_000000000-LC8T3/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-LC8T3-11APR2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-LC8T3-11APR2024.sh

