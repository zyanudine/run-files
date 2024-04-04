#210122_NDX550543_RUO_0010_AHC2GLBGXH-failed
nextseqdx=nextseqts0500backup
run=210122_NDX550543_RUO_0010_AHC2GLBGXH-failed
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
