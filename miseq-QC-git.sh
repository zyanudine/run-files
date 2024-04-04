#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

# ------------Miseq QC git
nohup bash $workdir/codes/Miseq-QC-git.sh 2>&1 | nohup tee -a tmp/Miseq-QC-git.nohup




