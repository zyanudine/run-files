#DRAGEN_TruSight_Oncology_500_ctDNA_Analysis_20240322_135229
novaseqdx=Dragen-RUO-staging
run=DRAGEN_TruSight_Oncology_500_ctDNA_Analysis_20240322_135229
sharef=/mnt/win-hp1		#share folder /mnt/win-hp or /mnt/win-hp3_1/NGS_Cambridge etc.

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Novaseq-TS0500_ctDNA-dragen-report.sh $novaseqdx $run $sharef 2>&1 | nohup tee -a tmp/$run.nohup
