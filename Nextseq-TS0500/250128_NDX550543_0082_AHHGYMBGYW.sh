#250128_NDX550543_0082_AHHGYMBGYW
nextseqdx=nextseq31
run=250128_NDX550543_0082_AHHGYMBGYW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
