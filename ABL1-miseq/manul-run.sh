# manual copy data and run if Beijing lab is not connected, and data copied to network share first
ls /mnt/win-hp3_1/NGS_Cambridge/ChinaLab_ABL1_backup -l
ls /mnt/win-hp3_1/NGS_Cambridge/ChinaLab_ABL1_backup/Alignment_1/20221105_051208/Fastq/
pico /mnt/win-hp3_1/NGS_Cambridge/ChinaLab_ABL1_backup/Alignment_1/20221105_051208/CompletedJobInfo.xml   #to see run name 221104_C70391_0035_000000000-GDJRL

cd run-files/ABL1-miseq
cp ABL1-miseq-bwamem-varscan-rover-GCVJ2-24OCT2022.sh ABL1-miseq-bwamem-varscan-rover-GDJRL-08NOV2022.sh  # change run name

mkdir -p seqs/221104_C70391_0035_000000000-GDJRL/fq
cp /mnt/win-hp3_1/NGS_Cambridge/ChinaLab_ABL1_backup/Alignment_1/20221105_051208/Fastq/* seqs/221104_C70391_0035_000000000-GDJRL/fq
gunzip seqs/221104_C70391_0035_000000000-GDJRL/fq/*

screen
./run-files/ABL1-miseq/ABL1-miseq-bwamem-varscan-rover-GDJRL-08NOV2022.sh
