#250224_NDX550543_0085_AHHFVMBGYW
nextseqdx=nextseq31
run=250224_NDX550543_0085_AHHFVMBGYW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
