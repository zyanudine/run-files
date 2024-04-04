#!/bin/bash
shopt -s extglob

mkdir -p seqs/221215_M70771_0076_000000000-GFGCM/fq
rsync -avls /mnt/miseqdx18/Illumina/MiSeqAnalysis/221215_M70771_0076_000000000-GFGCM/Alignment_1/20221216_073515/Fastq/*fastq.gz seqs/221215_M70771_0076_000000000-GFGCM/fq/
gunzip seqs/221215_M70771_0076_000000000-GFGCM/fq/*
nohup ./run-files/MICA/MICA-miseq-bwamem-bcftools-GFGCM-121622.sh

