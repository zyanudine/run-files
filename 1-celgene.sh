#!/bin/bash
shopt -s extglob

mkdir -p seqs/181108_M00662_0254_000000000-C586J/Alignment_msr
cp /mnt/miseq/Illumina/MiSeqOutput/181108_M00662_0254_000000000-C586J/Data/Intensities/BaseCalls/Alignment3/*+(bam|bai) seqs/181108_M00662_0254_000000000-C586J/Alignment_msr/
nohup ./run-files/Celgene0328-miseq-bwamem-varscan-rover-0254-111318.sh
