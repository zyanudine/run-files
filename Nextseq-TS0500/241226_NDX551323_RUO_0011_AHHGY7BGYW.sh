#241226_NDX551323_RUO_0011_AHHGY7BGYW
nextseqdx=nextseq33
run=241226_NDX551323_RUO_0011_AHHGY7BGYW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
