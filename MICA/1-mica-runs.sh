#!/bin/bash
shopt -s extglob

mkdir -p seqs/230214_M70771_0088_000000000-GFGB4/fq
rsync -avls /mnt/miseqdx18/Illumina/MiSeqAnalysis/230214_M70771_0088_000000000-GFGB4/Alignment_1/20230215_074159/Fastq/*fastq.gz seqs/230214_M70771_0088_000000000-GFGB4/fq/
gunzip seqs/230214_M70771_0088_000000000-GFGB4/fq/*
nohup run-files/MICA/MICA-miseq-bwamem-bcftools-GFGB4-15FEB2023.sh

