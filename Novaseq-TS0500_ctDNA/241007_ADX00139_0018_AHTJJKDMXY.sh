#241007_ADX00139_0018_AHTJJKDMXY
novaseqdx=Dragen-RUO-NAS
run=241007_ADX00139_0018_AHTJJKDMXY
sharef=/mnt/win-hp1		#share folder /mnt/win-hp or /mnt/win-hp3_1/NGS_Cambridge etc.

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Novaseq-TS0500_ctDNA-startdragen.sh $novaseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
