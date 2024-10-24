#240821_NDX551323_RUO_0008_AHLGC5BGXW
nextseqdx=nextseq33
run=240821_NDX551323_RUO_0008_AHLGC5BGXW
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-TS0500-report.sh $nextseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
