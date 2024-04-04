#210412_NDX550543_RUO_0014_AHKCHTBGXH
nextseqdx=nextseq31
run=210412_NDX550543_RUO_0014_AHKCHTBGXH
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
