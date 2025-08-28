#250716_NDX550543_RUO_0007_AHHL25BGYW
nextseqdx=nextseq31
run=250716_NDX550543_RUO_0007_AHHL25BGYW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
