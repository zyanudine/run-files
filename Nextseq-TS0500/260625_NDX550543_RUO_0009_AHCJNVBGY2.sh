#260625_NDX550543_RUO_0009_AHCJNVBGY2
nextseqdx=nextseq31
run=260625_NDX550543_RUO_0009_AHCJNVBGY2
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
