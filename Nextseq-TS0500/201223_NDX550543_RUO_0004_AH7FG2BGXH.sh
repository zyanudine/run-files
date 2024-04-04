#201223_NDX550543_RUO_0004_AH7FG2BGXH
nextseqdx=nextseqts0500backup
run=201223_NDX550543_RUO_0004_AH7FG2BGXH
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
