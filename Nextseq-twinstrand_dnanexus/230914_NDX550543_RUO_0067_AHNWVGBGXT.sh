# 230914_NDX550543_RUO_0067_AHNWVGBGXT

nextseqdx=nextseq31
project=230914_NDX550543_RUO_0067_AHNWVGBGXT
backup=/mnt/win-hp3_1/NGS_Cambridge/TwinStrand-AML-MRD
dxrun="Twinstrand-custom-Kitexon17-run4-LoD"
sharef=/mnt/win-hp1
cpdir=Nextseq-twinstrand_dnanexus

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-twinstrand_dnanexus-BPM.sh $nextseqdx $project $backup "$dxrun" $sharef $cpdir 2>&1 | nohup tee -a tmp/$project.nohup


