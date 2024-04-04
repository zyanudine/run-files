# 220421_NDX550543_RUO_0033_AHLN7LBGXL

nextseqdx=nextseq31
project=220421_NDX550543_RUO_0033_AHLN7LBGXL
backup=/mnt/win-hp3_1/NGS_Cambridge/TwinStrand-AML-MRD
dxrun="aml29-run4-26Apr2022"
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-twinstrand_dnanexus.sh $nextseqdx $project $backup "$dxrun" $sharef 2>&1 | nohup tee -a tmp/$project.nohup


