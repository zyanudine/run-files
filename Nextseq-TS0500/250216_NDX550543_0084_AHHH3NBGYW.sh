#250216_NDX550543_0084_AHHH3NBGYW
nextseqdx=nextseq31
run=250216_NDX550543_0084_AHHH3NBGYW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
