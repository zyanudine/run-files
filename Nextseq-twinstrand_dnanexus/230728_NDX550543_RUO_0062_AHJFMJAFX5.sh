# 230728_NDX550543_RUO_0062_AHJFMJAFX5

nextseqdx=nextseq31
project=230728_NDX550543_RUO_0062_AHJFMJAFX5
backup=/mnt/win-hp3_1/NGS_Cambridge/TwinStrand-AML-MRD
dxrun="Twinstrand-custom-KITex17-pilot-run"
sharef=/mnt/win-hp1
cpdir=Nextseq-twinstrand_dnanexus

nohup bash /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/codes/Nextseq-twinstrand_dnanexus-BPM.sh $nextseqdx $project $backup "$dxrun" $sharef $cpdir 2>&1 | nohup tee -a tmp/$project.nohup


