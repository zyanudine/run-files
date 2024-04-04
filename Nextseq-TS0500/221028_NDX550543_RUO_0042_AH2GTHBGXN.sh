#221028_NDX550543_RUO_0042_AH2GTHBGXN
nextseqdx=nextseq31
run=221028_NDX550543_RUO_0042_AH2GTHBGXN
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
