#!/bin/bash
mkdir -p seqs/231001_M70777_0106_000000000-L8HC6/fq
rsync -avls BaseSpace/Projects/BPCTMP350Sample_27Sep2023_KD_Batch1_R1/Samples/*/*/*fastq.gz seqs/231001_M70777_0106_000000000-L8HC6/fq/
gunzip seqs/231001_M70777_0106_000000000-L8HC6/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L8HC6-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L8HC6-05JAN2024.sh

mkdir -p seqs/231004_M70771_0129_000000000-L8HJG/fq
rsync -avls BaseSpace/Projects/TMP_04OCT2023_KD_Batch1_R2/Samples/*/*/*fastq.gz seqs/231004_M70771_0129_000000000-L8HJG/fq/
gunzip seqs/231004_M70771_0129_000000000-L8HJG/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L8HJG-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L8HJG-05JAN2024.sh

mkdir -p seqs/231004_M70777_0107_000000000-L8HRC/fq
rsync -avls BaseSpace/Projects/TMP_04OCT2023_KD_Batch1_R3/Samples/*/*/*fastq.gz seqs/231004_M70777_0107_000000000-L8HRC/fq/
gunzip seqs/231004_M70777_0107_000000000-L8HRC/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L8HRC-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L8HRC-05JAN2024.sh

mkdir -p seqs/231005_M70777_0108_000000000-L8TBN/fq
rsync -avls BaseSpace/Projects/TMP350_Batch2_R1_06Oct2023_TL/Samples/*/*/*fastq.gz seqs/231005_M70777_0108_000000000-L8TBN/fq/
gunzip seqs/231005_M70777_0108_000000000-L8TBN/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L8TBN-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L8TBN-05JAN2024.sh

mkdir -p seqs/231008_M70777_0109_000000000-L8HW5/fq
rsync -avls BaseSpace/Projects/TMP350_Batch2_R2_09Oct2023_TL/Samples/*/*/*fastq.gz seqs/231008_M70777_0109_000000000-L8HW5/fq/
gunzip seqs/231008_M70777_0109_000000000-L8HW5/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L8HW5-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L8HW5-05JAN2024.sh

mkdir -p seqs/231104_M70771_0136_000000000-LBD75/fq
rsync -avls BaseSpace/Projects/TMP350_Batch2-2_R1_04Nov2023_TL/Samples/*/*/*fastq.gz seqs/231104_M70771_0136_000000000-LBD75/fq/
gunzip seqs/231104_M70771_0136_000000000-LBD75/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-LBD75-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-LBD75-05JAN2024.sh

mkdir -p seqs/231108_M70784_0007_000000000-LBCNC/fq
rsync -avls BaseSpace/Projects/TMP350_Batch2-2_R2_08Nov2023_TL/Samples/*/*/*fastq.gz seqs/231108_M70784_0007_000000000-LBCNC/fq/
gunzip seqs/231108_M70784_0007_000000000-LBCNC/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-LBCNC-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-LBCNC-05JAN2024.sh

mkdir -p seqs/231108_M00662_0460_000000000-L973J/fq
rsync -avls BaseSpace/Projects/TMP350_Batch2-2_R3_08Nov2023_TL/Samples/*/*/*fastq.gz seqs/231108_M00662_0460_000000000-L973J/fq/
gunzip seqs/231108_M00662_0460_000000000-L973J/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L973J-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L973J-05JAN2024.sh

mkdir -p seqs/231201_M70771_0142_000000000-L978G/fq
rsync -avls BaseSpace/Projects/BPCTMP350Sample_01Dec2023_KD_Batch4_R1/Samples/*/*/*fastq.gz seqs/231201_M70771_0142_000000000-L978G/fq/
gunzip seqs/231201_M70771_0142_000000000-L978G/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L978G-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L978G-05JAN2024.sh

mkdir -p seqs/231204_M70771_0143_000000000-L932M/fq
rsync -avls BaseSpace/Projects/TMP_04Dec2023_KD_Batch4_R2/Samples/*/*/*fastq.gz seqs/231204_M70771_0143_000000000-L932M/fq/
gunzip seqs/231204_M70771_0143_000000000-L932M/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L932M-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L932M-05JAN2024.sh

mkdir -p seqs/231204_M70777_0115_000000000-L9764/fq
rsync -avls BaseSpace/Projects/TMP_04Dec2023_KD_Batch4_R3/Samples/*/*/*fastq.gz seqs/231204_M70777_0115_000000000-L9764/fq/
gunzip seqs/231204_M70777_0115_000000000-L9764/fq/*
nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-L9764-05JAN2024.sh
nohup run-files/Incyte-miseq/Incyte-miseq-pindel-L9764-05JAN2024.sh

