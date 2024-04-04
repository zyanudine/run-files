#240212_ADX00139_0009_AHM2J7DMXY
novaseqdx=Dragen-RUO-staging
run=240212_ADX00139_0009_AHM2J7DMXY
sharef=/mnt/win-hp1		#share folder /mnt/win-hp or /mnt/win-hp3_1/NGS_Cambridge etc.

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Novaseq-TS0500_ctDNA-dragen-report.sh $novaseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
