#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

samplesheet=Archer_CMP_webpostanalysis_samplesheet.txt 	# Archer_CMP_webpostanalysis_samplesheet.txt
sharef="/mnt/win-hp1"   		        # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseq_Nextseq-Archer_CMP_webpostanalysis-auto-run.sh $samplesheet $sharef 2>&1 | nohup tee -a tmp/nextseq-twinstrand_dnanexus.nohup
