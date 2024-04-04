#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

#METex14
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx-workflowcapture.sh $outs $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx-workflowcapture.nohup


#METAMP
outs=Miseqdx-Archer-S3-results          # Miseqdx-Archer-S3-results-METex14
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx-workflowcapture.sh $outs $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx-workflowcapture.nohup

