#211227_NDX550543_RUO_0029_AH3733BGXL
nextseqdx=nextseq31
run=211227_NDX550543_RUO_0029_AH3733BGXL
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
