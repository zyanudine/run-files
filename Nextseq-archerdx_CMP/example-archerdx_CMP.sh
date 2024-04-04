# 220421_NDX550543_RUO_0033_AHLN7LBGXL

nextseqdx=nextseq31
project=220421_NDX550543_RUO_0033_AHLN7LBGXL
backup=/mnt/win-hp3_1/NGS_Cambridge/NextSeq_merged_fastq
dxrun="aml29-run4-26Apr2022"
sharef=/mnt/win-hp1
cpdir=Nextseq-archerdx_CMP

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-archerdx_CMP.sh $nextseqdx $project $backup "$dxrun" $sharef $cpdir 2>&1 | nohup tee -a tmp/$project.nohup


