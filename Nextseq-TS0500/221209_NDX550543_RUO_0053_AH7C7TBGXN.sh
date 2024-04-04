#221209_NDX550543_RUO_0053_AH7C7TBGXN
nextseqdx=nextseq31
run=221209_NDX550543_RUO_0053_AH7C7TBGXN
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
