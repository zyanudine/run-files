#241106_NDX551323_RUO_0009_AHF7JYBGYW_3
nextseqdx=nextseq33
run=241106_NDX551323_RUO_0009_AHF7JYBGYW_3
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
