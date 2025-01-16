#250102_NDX551323_RUO_0013_AHHGY3BGYW
nextseqdx=nextseq33
run=250102_NDX551323_RUO_0013_AHHGY3BGYW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
