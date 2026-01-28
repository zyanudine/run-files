#260123_NDX551323_0005_AHLCYNBGYX
nextseqdx=nextseq33
run=260123_NDX551323_0005_AHLCYNBGYX
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
