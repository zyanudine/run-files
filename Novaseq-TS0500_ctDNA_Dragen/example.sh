#240212_ADX00139_0009_AHM2J7DMXY
novaseqdx=Dragen-RUO-NAS
run=240212_ADX00139_0009_AHM2J7DMXY
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Novaseq-TS0500_ctDNA-startdragen.sh $novaseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
