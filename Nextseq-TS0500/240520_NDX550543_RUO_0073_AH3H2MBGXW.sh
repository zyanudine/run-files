#240520_NDX550543_RUO_0073_AH3H2MBGXW
nextseqdx=nextseq31
run=240520_NDX550543_RUO_0073_AH3H2MBGXW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
