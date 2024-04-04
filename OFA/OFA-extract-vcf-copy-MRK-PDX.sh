#!/bin/bash
shopt -s extglob

# cp to MRK specified folder: DNA bam and processed bam, renamed with sample name from folder, 8/17/18
dtype="ir5.0-vcf-copy-MRK"  # null
project="MRK"  # null
plgin=all  # null
seqserver=IR16  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=OFA_extract_IR_bam  # share folder dir
sharedir=/mnt/IR16-backup
dateofcp="Sep_30_2018"

#nohup bash ./codes/Ion-data-tran-IR5.0.sh $dtype $project $plgin $seqserver $cpdir 2>&1 | nohup tee -a tmp/ofa-extract-bam-MRK.nohup
nohup bash ./codes/Ion-data-tran-IR5.0-new.sh $dtype $project $plgin $seqserver $cpdir $sharedir $dateofcp 2>&1 | nohup tee -a tmp/ofa-extract-bam-MRK.nohup


