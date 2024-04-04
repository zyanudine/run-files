#!/bin/bash
shopt -s extglob

# ------------miseq index check

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

sudo kill -9 `echo \`ps -eo pid,ppid,stime,time,s,cmd | grep -i "Miseq-QC-minotor.sh\|Miseq-QC-git.sh\|Miseqdx-archerdx_index_check.sh" | awk '{print $1}'\``

# ------------Miseq QC
rm -fr $workdir/tmp/Miseq-QC-minotor.nohup
nohup bash $workdir/codes/Miseq-cn-QC-minotor.sh 2>&1 | nohup tee -a tmp/Miseq-QC-minotor.nohup




