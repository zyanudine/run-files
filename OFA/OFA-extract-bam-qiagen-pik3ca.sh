#!/bin/bash
shopt -s extglob

# extract bam files from IR server for OFA projects

dtype="ir5.0-bam-extract"  # null
project="BP17"  # null
plgin=all  # null
seqserver=IR34  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=OFA_extract_IR_bam  # share folder dir
sharedir=/media/zyan/MMD_2
dateofcp="Sep_14_2018"

#nohup bash ./codes/Ion-data-tran-IR5.0.sh $dtype $project $plgin $seqserver $cpdir 2>&1 | nohup tee -a tmp/ofa-extract-bam.nohup
cd /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/    # cron process must give absolute dir
nohup bash ./codes/Ion-data-tran-IR5.0-new.sh $dtype $project $plgin $seqserver $cpdir $sharedir $dateofcp 2>&1 | nohup tee -a tmp/ofa-extract-bam.nohup

