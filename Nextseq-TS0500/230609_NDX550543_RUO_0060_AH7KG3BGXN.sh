#230609_NDX550543_RUO_0060_AH7KG3BGXN
nextseqdx=nextseq31
run=230609_NDX550543_RUO_0060_AH7KG3BGXN
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
