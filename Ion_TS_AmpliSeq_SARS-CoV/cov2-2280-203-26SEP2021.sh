# Ion_TS_AmpliSeq_SARS-CoV pipeline
#--------------
#!/bin/bash
shopt -s extglob

workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ

seqserver=TS07
run=Auto_user_2280-203-Ion_AmpliSeq_SARS-CoV-2_validation_repro_WL_435_457
sharef=/mnt/win-hp1

nohup bash $workdir/codes/Ion_TS_AmpliSeq_SARS-CoV-report.sh $seqserver $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
