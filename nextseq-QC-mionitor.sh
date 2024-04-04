#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

sudo kill -9 `echo \`ps -eo pid,ppid,stime,time,s,cmd | grep -i "Nextseq-QC-minotor.sh" | awk '{print $1}'\``


# ------------Miseq QC
nohup bash $workdir/codes/Nextseq-QC-minotor.sh 2>&1 | nohup tee -a tmp/Miseq-QC-minotor.nohup




