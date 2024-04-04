#!/bin/bash
shopt -s extglob

# extract bam files from IR server for OFA projects: MRK only

# extract MRK to IR16-backup, 8/17/18
dtype="ir5.0-vcf-extract-MRK"  # null
project="MRK"  # null
plgin=all  # null
seqserver=IR16  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=OFA_extract_IR_bam  # share folder dir
sharedir=/mnt/IR16-backup
dateofcp="Sep_30_2018"

nohup bash ./codes/Ion-data-tran-IR5.0-new.sh $dtype $project $plgin $seqserver $cpdir $sharedir $dateofcp 2>&1 | nohup tee -a tmp/ofa-extract-bam-PDX-IR16-backup.nohup

