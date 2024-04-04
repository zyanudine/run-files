# 231206_NDX550543_RUO_0069_AHNWVHBGXT

nextseqdx=nextseq31
project=231206_NDX550543_RUO_0069_AHNWVHBGXT
backup=/mnt/win-hp3_1/NGS_Cambridge/TwinStrand-AML-MRD
dxrun="TwinStrand-custom-KITexon17-BPCsamplesRun1"
sharef=/mnt/win-hp1
cpdir=Nextseq-twinstrand_dnanexus

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-twinstrand_dnanexus-BPM.sh $nextseqdx $project $backup "$dxrun" $sharef $cpdir 2>&1 | nohup tee -a tmp/$project.nohup


