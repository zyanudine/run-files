mkdir -p seqs/171107_M00662_0197_000000000-BH5CM/fq
cp -pr /mnt/win-hp/base_space/BMD_TruSight_Re-run4-51462447/*/*/*fastq.gz seqs/171107_M00662_0197_000000000-BH5CM/fq/
gunzip seqs/171107_M00662_0197_000000000-BH5CM/fq/*

nohup ./run-files/BMD-trusight-miseq-bwamem-varscanFLT3-rover-0197-111417.sh &
nohup ./run-files/BMDuseIncyte-miseq-bwamem-varscan-rover-0197-111417.sh &

