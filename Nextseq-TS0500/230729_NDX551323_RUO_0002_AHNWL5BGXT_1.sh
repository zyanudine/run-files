#230729_NDX551323_RUO_0002_AHNWL5BGXT_1
nextseqdx=nextseq33
run=230729_NDX551323_RUO_0002_AHNWL5BGXT_1
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
