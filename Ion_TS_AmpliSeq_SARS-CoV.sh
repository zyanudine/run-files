#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir


seqserver=TS07  # TS07
proj_flt="Ion_AmpliSeq_SARS-CoV-2\|BNT_SARS_CoV2\|P386"  # "Ion_AmpliSeq_SARS-CoV-2\|P386"
sharef=/mnt/win-hp1    # /mnt/win-hp1 etc.

nohup bash $workdir/codes/Ion_TS_AmpliSeq_SARS-CoV-auto.sh $seqserver $proj_flt $sharef 2>&1 | nohup tee -a tmp/Ion_TS_AmpliSeq_SARS-CoV.nohup


