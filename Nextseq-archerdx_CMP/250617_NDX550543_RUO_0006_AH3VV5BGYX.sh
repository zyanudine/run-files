# 250617_NDX550543_RUO_0006_AH3VV5BGYX

nextseqdx=nextseq31
project=250617_NDX550543_RUO_0006_AH3VV5BGYX
backup=/mnt/win-hp3_1/NGS_Cambridge/NextSeq_merged_fastq
dxrun="null"
sharef=/mnt/win-hp1
cpdir=Nextseq-archerdx_CMP

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-archerdx_CMP.sh $nextseqdx $project $backup "$dxrun" $sharef $cpdir 2>&1 | nohup tee -a tmp/$project.nohup


