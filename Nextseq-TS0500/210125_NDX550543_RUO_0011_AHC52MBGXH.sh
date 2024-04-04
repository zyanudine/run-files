#210125_NDX550543_RUO_0011_AHC52MBGXH
nextseqdx=nextseqts0500backup
run=210125_NDX550543_RUO_0011_AHC52MBGXH
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
