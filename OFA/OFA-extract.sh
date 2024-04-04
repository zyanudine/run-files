#!/bin/bash
shopt -s extglob

# extract TS/IR files/matrix for OFA projects

cd /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/    # cron process must give absolute dir

dtype="ts5.0-ofa-extract"  # null
project=null  # null
plgin=all  # null
seqserver=TS32  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=/mnt/win-hp1/next_gene_seq_wind/share/OFA_extract_TS  # share folder dir

nohup bash ./codes/Ion-data-tran-TS5.0.sh $dtype $project $plgin $seqserver $cpdir  2>&1 | nohup tee -a tmp/ofa-extract.nohup
nohup bash ./codes/Ion-OFA-extract-TS5.0.sh $dtype $project $plgin $seqserver $samples $cpdir 2>&1 | nohup tee -a tmp/ofa-extract.nohup

dtype="ts5.0-ofa-extract"  # null
project=null  # null
plgin=all  # null
seqserver=TS23  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=/mnt/win-hp1/next_gene_seq_wind/share/OFA_extract_TS  # share folder dir

nohup bash ./codes/Ion-data-tran-TS5.0.sh $dtype $project $plgin $seqserver $cpdir  2>&1 | nohup tee -a tmp/ofa-extract.nohup
nohup bash ./codes/Ion-OFA-extract-TS5.0.sh $dtype $project $plgin $seqserver $samples $cpdir 2>&1 | nohup tee -a tmp/ofa-extract.nohup

dtype="ts5.0-ofa-extract"  # null
project=null  # null
plgin=all  # null
seqserver=TS19  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=/mnt/win-hp1/next_gene_seq_wind/share/OFA_extract_TS  # share folder dir

nohup bash ./codes/Ion-data-tran-TS5.0.sh $dtype $project $plgin $seqserver $cpdir  2>&1 | nohup tee -a tmp/ofa-extract.nohup
nohup bash ./codes/Ion-OFA-extract-TS5.0.sh $dtype $project $plgin $seqserver $samples $cpdir 2>&1 | nohup tee -a tmp/ofa-extract.nohup


dtype="ir5.0-ofa-extract"  # null
project=null  # null
plgin=all  # null
seqserver=IR34  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=/mnt/win-hp1/next_gene_seq_wind/share/OFA_extract_IR  # share folder dir

nohup bash ./codes/Ion-data-tran-IR5.0.sh $dtype $project $plgin $seqserver $cpdir 2>&1 | nohup tee -a tmp/ofa-extract.nohup
nohup bash ./codes/Ion-OFA-extract-IR5.0.sh $dtype $project $plgin $seqserver $samples $cpdir 2>&1 | nohup tee -a tmp/ofa-extract.nohup

