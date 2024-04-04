# 211101_NDX550543_RUO_0023_AHKMCTBGXK

nextseqdx=nextseqTwinStrandbackup
project=211101_NDX550543_RUO_0023_AHKMCTBGXK
backup=/mnt/win-hp3_1/NGS_Cambridge/TwinStrand-AML-MRD
dxrun="aml29-run2 - Nov 03, 2021"
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-twinstrand_dnanexus.sh $nextseqdx $project $backup "$dxrun" $sharef 2>&1 | nohup tee -a tmp/$project.nohup


