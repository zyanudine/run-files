#221219_NDX550543_RUO_0056_AH5YY7BGXN
nextseqdx=nextseq31
run=221219_NDX550543_RUO_0056_AH5YY7BGXN
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
