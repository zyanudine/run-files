#250106_NDX551323_RUO_0014_AHHGWFBGYW
nextseqdx=nextseq33
run=250106_NDX551323_RUO_0014_AHHGWFBGYW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
