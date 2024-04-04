#211220_NDX550543_RUO_0028_AH3F2KBGXL
nextseqdx=nextseq31
run=211220_NDX550543_RUO_0028_AH3F2KBGXL
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
