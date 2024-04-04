# 230130_M70771_0086_000000000-KTMR2
# 5/22/17 for Incyte pipeline  # fq no trim, varscan only
# 10/31/16 cp from  Novartis_Myloid_FLT3-ampliseq-miseq-fqnctbwamem-pindel-0044-012816.sh, varscan cov/read/strand change
# ls /mnt/miseq/Illumina/MiSeqAnalysis/ -ltrh ; 0100 is local miseq run number, AWV1A is flow cell number shared to basesapce
# ls /mnt/win-hp2/base_space    to check download folder
# 12/14/15 cut fastq, bwamem alignement, varscan , rover
# cp from /mnt/win-hp/base_space/ since download fastq from basespace (see 0030, 0044, 0045 etc. for download bam/fastq from bs and cp from /mnt/win-hp/base_space/, or cp from public)
# mkdir -p seqs/230130_M70771_0086_000000000-KTMR2/fq
# rsync -avls BaseSpace/Projects/Incyte_30jan2023_B5R2-1/Samples/*/*/*fastq.gz seqs/230130_M70771_0086_000000000-KTMR2/fq/
# gunzip seqs/230130_M70771_0086_000000000-KTMR2/fq/*
# basespace bwa use hg19 reference, also not hg19.fasta, use miseq-hg19-genome.fa
# 3/16/15 for ROVER pipeline
# 10/30/15 for pindel pipeline
# 9/3/19 change cpdir=Miseq_panel_Incyte to full path, due to win-hp change

------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_fqnctbwamem"
#samples="+(A3107_S21|A3214_S20)*"
samples=all
#samples="+(B10)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir="/mnt/win-hp1/next_gene_seq_wind/share/Miseq_panel_Incyte"
project=230130_M70771_0086_000000000-KTMR2    # change project name
#roi=TruSight_MMD_calculated_ROI.merge.bed
roi=miseq-incyte-roi.bed
roi_mergesort=miseq-incyte-roi.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed   # does not matter since pairallelecount=n
pairallelecount=n
gn2NM=NVS_genes_and_refRNA_accession_NM_number.xls   # does not matter for Incyte panel

nohup bash ./codes/Miseq-general-ROVER-Incyte.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount $gn2NM 2>&1 | nohup tee -a tmp/$project.nohup
#date=`date | cut -d' ' -f1-3 | sed -e 's/ /_/g'`
#nohup bash ./codes/Miseq-general-ROVER-FLT3.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount 2>&1 | nohup tee -a tmp/${project}_$date.nohup

