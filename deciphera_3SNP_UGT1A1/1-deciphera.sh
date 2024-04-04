#perl -i.bak -pe 's/210806_M70777_0029_000000000-G8N47/210810_M70777_0030_000000000-G8NJT/g' *G8NJT-081121.sh  # cp first, or
#perl -pe 's/210806_M70777_0029_000000000-G8N47/210810_M70777_0030_000000000-G8NJT/g' deciphera_3SNP_UGT1A1-miseq-bwamem-bcftools-G8N47-080921.sh > 1
#perl -pe 's/PROJ0375C_Deciphera_Run4/PROJ0375C_Deciphera_Training-LS-WLI/g' 1 > deciphera_3SNP_UGT1A1-miseq-bwamem-bcftools-G8NJT-081121.sh
# chmod +x deciphera_3SNP_UGT1A1-miseq-bwamem-bcftools-G8NJT-081121.sh
mkdir -p seqs/210810_M70777_0030_000000000-G8NJT/fq
#rsync -avls 'BaseSpace/Projects/PROJ0375C_Deciphera_Training-LS-WLI'/Samples/*/*/*fastq.gz seqs/210810_M70777_0030_000000000-G8NJT/fq/ or
rsync -avls /mnt/miseqdx19/Illumina/MiSeqAnalysis/210810_M70777_0030_000000000-G8NJT/Alignment_1/20210811_043217/Fastq/*fastq.gz seqs/210810_M70777_0030_000000000-G8NJT/fq/
gunzip seqs/210810_M70777_0030_000000000-G8NJT/fq/*
nohup ./run-files/deciphera_3SNP_UGT1A1/deciphera_3SNP_UGT1A1-miseq-bwamem-bcftools-G8NJT-081121.sh
