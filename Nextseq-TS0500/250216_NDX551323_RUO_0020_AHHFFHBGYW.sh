#250216_NDX551323_RUO_0020_AHHFFHBGYW
nextseqdx=nextseq33
run=250216_NDX551323_RUO_0020_AHHFFHBGYW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
