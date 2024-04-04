# Ion_TS_AmpliSeq_SARS-CoV pipeline
#--------------
#!/bin/bash
shopt -s extglob

workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ

seqserver=TS07
run=Ion_AmpliSeq_SARS-CoV-2-540-Run1-5-WLReanalysis_496
sharef=/mnt/win-hp1

nohup bash $workdir/codes/Ion_TS_AmpliSeq_SARS-CoV-report.sh $seqserver $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
