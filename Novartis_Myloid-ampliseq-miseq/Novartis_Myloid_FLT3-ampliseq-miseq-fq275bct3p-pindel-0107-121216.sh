# 161209_M00662_0107_000000000-AV474, use MSR2.2
# get data in several ways:
# cp from public now since they download it: mkdir -p seqs/151207_M00662_0045_000000000-AK244/Alignment_bsbwa; 
#   cp -rp /mnt/win-hp/next_gene_seq_wind/share/public/Novartis\ TS\ Myloid\ Panel/BWA-MEM\ data/151207_M00662_0045_000000000-AK244/* seqs/151207_M00662_0045_000000000-AK244/Alignment_bsbwa/
# download bwa bam from basespace (use downloader), directly to 90.5/e/basespace, i.e
#   mkdir -p seqs/150317_M00662_0030_000000000-AE9V5/Alignment_bsbwa
#   mkdir -p miseq-reporter-results/150317_M00662_0030_000000000-AE9V5/BaseCalls/Alignment_bsbwa/Basespace-Picards-cov
#   cp /mnt/win-hp/base_space/Indivumed_AmpliSeq_Illumina-20738929/*/*+(bam|bai) seqs/150317_M00662_0030_000000000-AE9V5/Alignment_bsbwa
#   cp /mnt/win-hp/base_space/Indivumed_AmpliSeq_Illumina-20738929/*/*.coverage.csv \
#   miseq-reporter-results/150317_M00662_0030_000000000-AE9V5/BaseCalls/Alignment_bsbwa/Basespace-Picards-cov/
# basespace bwa use hg19 reference, also not hg19.fasta, use miseq-hg19-genome.fa
# also not use g1k bed for since reference not g1k, but merged
# 3/16/15 for ROVER pipeline
# 10/30/15 for pindel pipeline
# 1/15/16 for original fqnctbwamem, then to pindel/cigar-seq
#  now fastq already download in *bwamem-varscan-rover*.sh from basespace to win-hp or public (they down from bs)
# 11/2/16 change to *fq_275bct3p.sh with longer fq file, then fq275bct3pbwamemM

------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_fq275bct3pbwamemM"
samples=all
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_Ampliseq_v2_panel_FLT3_fq275bct3pbwamem
project=161209_M00662_0107_000000000-AV474    # change project name
roi=TruSight_MMD_calculated_ROI.merge.bed   # does not matter
reffai=miseq-hg19-genome.fa
control_run=161027_M00662_0100_000000000-AWV1A
#control_name=NVSC4
control_name=NA12878_S7_L001.bwamem  # fqnctbwamem bam name diff from bsbwa
nohup bash ./codes/Miseq-1-bwa-gatk-pre-MSR2.2-FLT3-fq_275bct3p.sh $project $alg $samples $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Miseq-general-pindel-275bp.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai $control_run $control_name 2>&1 | nohup tee -a tmp/$project.nohup
