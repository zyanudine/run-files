# 150317_M00662_0030_000000000-AE9V5
# 151202_M00662_0044_000000000-AK2FU
# 12/14/15 cut fastq, bwamem alignement, varscan , rover
# cp from /mnt/win-hp/base_space/ since download fastq from basespace (see 0030, 0044, 0045 etc. for download bam/fastq from bs and cp from /mnt/win-hp/base_space/, or cp from public)
# mkdir seqs/151202_M00662_0044_000000000-AK2FU/fq
# cp -pr /mnt/win-hp/base_space/NVSTruSightB1_B8-26958214//*/*/*/*/*fastq.gz seqs/151202_M00662_0044_000000000-AK2FU/fq/
# gunzip seqs/151202_M00662_0044_000000000-AK2FU/fq/*
# basespace bwa use hg19 reference, also not hg19.fasta, use miseq-hg19-genome.fa
# 3/16/15 for ROVER pipeline
# 10/30/15 for pindel pipeline
# 3/9/16 cp from Novartis_Myloid-ampliseq-miseq-bwamem-varscan-rover-0044-122315.sh , for AZN ampliseq
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_bsbwa"
#samples="+(A3107_S21|A3214_S20)*"
samples=all
#samples="+(B10)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_Ampliseq_panel_AZN
project=150317_M00662_0030_000000000-AE9V5    # change project name
#roi=TruSight_MMD_calculated_ROI.merge.bed
roi=CHP2.20131001.designed.bed
roi_mergesort=CHP2.20131001.designed.merge.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed   # does not matter since pairallelecount=n
pairallelecount=n
nohup bash ./codes/Miseq-general-ROVER-AZN.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount 2>&1 | nohup tee -a tmp/$project.nohup

