#221102_NDX550543_RUO_0043_AH2JF5BGXN
nextseqdx=nextseq31
run=221102_NDX550543_RUO_0043_AH2JF5BGXN
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
