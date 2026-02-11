#260202_NDX551323_0008_AHLCL5BGYX
nextseqdx=nextseq33
run=260202_NDX551323_0008_AHLCL5BGYX
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
