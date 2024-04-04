# 220317_NDX550543_RUO_0032_AHL7CKBGXL

nextseqdx=nextseqTwinStrandbackup
project=220317_NDX550543_RUO_0032_AHL7CKBGXL
backup=/mnt/win-hp3_1/NGS_Cambridge/TwinStrand-AML-MRD
dxrun="aml29-run3-21Mar2022"
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-twinstrand_dnanexus.sh $nextseqdx $project $backup "$dxrun" $sharef 2>&1 | nohup tee -a tmp/$project.nohup


