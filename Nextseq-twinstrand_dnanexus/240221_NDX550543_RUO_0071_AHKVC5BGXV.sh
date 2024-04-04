# 240221_NDX550543_RUO_0071_AHKVC5BGXV

nextseqdx=nextseq31
project=240221_NDX550543_RUO_0071_AHKVC5BGXV
backup=/mnt/win-hp3_1/NGS_Cambridge/TwinStrand-AML-MRD
dxrun="TwinStrand-custom_KITexon17-dilutionsBPCsamplesRun3"
sharef=/mnt/win-hp1
cpdir=Nextseq-twinstrand_dnanexus

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-twinstrand_dnanexus-BPM.sh $nextseqdx $project $backup "$dxrun" $sharef $cpdir 2>&1 | nohup tee -a tmp/$project.nohup


