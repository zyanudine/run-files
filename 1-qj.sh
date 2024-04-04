#sleep 3600
mkdir -p seqs/170929_M00662_0180_000000000-BDHNP/fq
cp -pr /mnt/win-hp/base_space/Qiagen_FLT3\ ITD_Run\ 8-48452438/*/*fastq.gz seqs/170929_M00662_0180_000000000-BDHNP/fq/
gunzip seqs/170929_M00662_0180_000000000-BDHNP/fq/*
nohup ./run-files/Qiagen-Trusight-miseq-bwamem-varscanFLT3-rover-0180-100217.sh &
nohup ./run-files/Qiagen-Trusight_FLT3-miseq-fq275bct3p-pindel-0180-100217.sh &

