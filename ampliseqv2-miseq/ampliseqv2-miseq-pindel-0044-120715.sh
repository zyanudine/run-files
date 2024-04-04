# 151202_M00662_0044_000000000-AK2FU, use MSR2.2 from bam file
# cp from public now since they download it: mkdir -p seqs/151202_M00662_0044_000000000-AK2FU/Alignment_bsbwa; 
# cp -rp /mnt/win-hp/next_gene_seq_wind/share/public/Novartis\ TS\ Myloid\ Panel/BWA-MEM\ data/151202_M00662_0044_000000000-AK2FU/* seqs/151202_M00662_0044_000000000-AK2FU/Alignment_bsbwa/
# download bwa bam from basespace (use downloader), directly to 90.5/e/basespace, i.e
# mkdir -p seqs/150317_M00662_0030_000000000-AE9V5/Alignment_bsbwa
# mkdir -p miseq-reporter-results/150317_M00662_0030_000000000-AE9V5/BaseCalls/Alignment_bsbwa/Basespace-Picards-cov
# cp /mnt/win-hp/base_space/Indivumed_AmpliSeq_Illumina-20738929/*/*+(bam|bai) seqs/150317_M00662_0030_000000000-AE9V5/Alignment_bsbwa
# cp /mnt/win-hp/base_space/Indivumed_AmpliSeq_Illumina-20738929/*/*.coverage.csv \
# miseq-reporter-results/150317_M00662_0030_000000000-AE9V5/BaseCalls/Alignment_bsbwa/Basespace-Picards-cov/
# basespace bwa use hg19 reference, also not hg19.fasta, use miseq-hg19-genome.fa
# also not use g1k bed, but merged
# 3/16/15 for ROVER pipeline
# 10/30/15 for pindel pipeline
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_bsbwa"
samples=all
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_Ampliseq_v2_panel_FLT3
project=151202_M00662_0044_000000000-AK2FU    # change project name
roi=CHP2.20131001.designed.merge.bed   # does not matter
reffai=miseq-hg19-genome.fa
control_run=151113_M00662_0039_000000000-AK2A8
control_name=NVSC4
nohup bash ./codes/Miseq-general-pindel.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai $control_run $control_name 2>&1 | nohup tee -a tmp/$project.nohup
