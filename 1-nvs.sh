#sleep 3600
mkdir -p seqs/171218_M00662_0215_000000000-BJWBC/fq
cp -pr /mnt/win-hp/base_space/Novartis_FLT3_ITD_Run10-56311929/*/*/*fastq.gz seqs/171218_M00662_0215_000000000-BJWBC/fq/
gunzip seqs/171218_M00662_0215_000000000-BJWBC/fq/*
nohup ./run-files/Novartis_Myloid-ampliseq-miseq-bwamem-varscanFLT3-rover-0215-122017.sh &
nohup ./run-files/Novartis_Myloid_FLT3-ampliseq-miseq-fq275bct3p-pindel-0215-122017.sh &

