# 211020_NDX550543_RUO_0019_AHF7F2BGXK

nextseqdx=nextseqTwinStrandbackup
project=211020_NDX550543_RUO_0019_AHF7F2BGXK
backup=/mnt/win-hp3_1/NGS_Cambridge/TwinStrand-AML-MRD
dxrun="aml29-run1-Oct 20, 2021"
sharef=/mnt/win-hp1

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-twinstrand_dnanexus.sh $nextseqdx $project $backup "$dxrun" $sharef 2>&1 | nohup tee -a tmp/$project.nohup


