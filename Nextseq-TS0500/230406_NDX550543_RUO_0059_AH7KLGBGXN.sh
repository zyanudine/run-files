#230406_NDX550543_RUO_0059_AH7KLGBGXN
nextseqdx=nextseq31
run=230406_NDX550543_RUO_0059_AH7KLGBGXN
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
