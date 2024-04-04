# 151207_M00662_0045_000000000-AK244
# 12/14/15 cut fastq, bwamem alignement, varscan , rover
# cp from public since they put fastq there  (see 0030, 0044, 0045 etc. for download bam/fastq from bs and cp from /mnt/win-hp/base_space/, or cp from public)
# mkdir seqs/151207_M00662_0045_000000000-AK244/fq
# cp -pr /mnt/win-hp/next_gene_seq_wind/share/public/Novartis\ TS\ Myloid\ Panel/fastq/NVSTruSightB9_B16-26952035/*/*/*/*/*fastq.gz \
# seqs/151207_M00662_0045_000000000-AK244/fq/
# gunzip seqs/151207_M00662_0045_000000000-AK244/Alignment_bsbwa/fq/*
# basespace bwa use hg19 reference, also not hg19.fasta, use miseq-hg19-genome.fa
# 3/16/15 for ROVER pipeline
# 10/30/15 for pindel pipeline
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_bwamem"
#samples="+(A3107_S21|A3214_S20)*"
samples=all
#samples="+(B10)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_Ampliseq_v2_panel_FLT3
project=151207_M00662_0045_000000000-AK244    # change project name
#roi=TruSight_MMD_calculated_ROI.merge.bed
roi=TruSight_MMD_calculated_ROI.bed
roi_mergesort=TruSight_MMD_calculated_ROI.merge.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed   # does not matter since pairallelecount=n
pairallelecount=n
nohup bash ./codes/Miseq-general-ROVER-FLT3.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount 2>&1 | nohup tee -a tmp/$project.nohup

