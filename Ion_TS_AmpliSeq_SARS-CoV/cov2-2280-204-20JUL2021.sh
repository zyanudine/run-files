# Ion_TS_AmpliSeq_SARS-CoV pipeline
#--------------
#!/bin/bash
shopt -s extglob

workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ

seqserver=TS07
run=Auto_user_2280-204-Ion_AmpliSeq_SARS-CoV-2_P386_repro_12_clinical_530_XW_433_459
sharef=/mnt/win-hp1

nohup bash $workdir/codes/Ion_TS_AmpliSeq_SARS-CoV-report.sh $seqserver $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
