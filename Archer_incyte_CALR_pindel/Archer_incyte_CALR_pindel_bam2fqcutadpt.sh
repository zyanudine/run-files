# see also codes/prjts/archer_incyte_CALR.sh
#!/bin/bash
shopt -s extglob

workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ

batch=$1
bam_folder=$2

#----- make a manual folder for pipeline run from archer bam files
#batch=Incyte-INCA33989-101/batch-2
#batch=Incyte-INCA33989-101/batch-3
#batch=Incyte-INCA33989-101/batch-6
#batch=Incyte-INCA33989-102/Batch22-01Nov2025-MC
#sample="+(DX61289|EA82694)"
#sample="+(DZ93939|DZ93952|EA82692)"
#sample=EE81179
#sample=EV68534
sample=""   # all samples

#bam_folder=`ls /mnt/win-hp3_1/NGS_Cambridge/$batch | grep -i bam`
#echo $bam_folder
#bam_folder="BAM"           #batch2,22
#bam_folder="Bam files"    #batch 3,6
#bam_folder="Bam"
#bam_folder="bam"

seq_folder=seqs/251111_M00000_0000_000000000-bam2fqcutadptestarcherincyteCALR/Alignment_archerbam
mkdir -p $seq_folder
#mv $seq_folder/* /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/trash/

#ls /mnt/win-hp3_1/NGS_Cambridge/Incyte-INCA33989-101/batch-2/+(fastq|Fastq|FASTQ|"Fastq files")/*
#ls /mnt/win-hp3_1/NGS_Cambridge/Incyte-INCA33989-101/batch-3/+(fastq|Fastq|FASTQ|"Fastq files")/*
#ls -s /mnt/win-hp3_1/NGS_Cambridge/Incyte-INCA33989-101/batch-2/fastq/DX61289* $seq_folder/
ln -s /mnt/win-hp3_1/NGS_Cambridge/"$batch"/"$bam_folder"/$sample* $seq_folder/


#from run-files/Incyte-miseq/Incyte-miseq-pindel-LJBCC-12JUN2024.sh, but modify insert size
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_fqctbwamem"
samples=all
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir="/mnt/win-hp1/next_gene_seq_wind/share/Miseq_panel_archer_incyte_CALR"
project=251111_M00000_0000_000000000-bam2fqcutadptestarcherincyteCALR
roi=miseq-incyte-roi.bed   # does not matter
reffai=miseq-hg19-genome.fa
cutadp="y"
control_run=240608_M70784_0031_000000000-LJBCC
#control_name=NVSC4
control_name=NA12878_S7_L001.bwamem  # does not matter for Incyte panel
nohup bash ./codes/Miseq-1-bwa-gatk-pre-MSR2.2-archer_incyte_CALR_archerbam.sh $project $alg $samples $roi $reffai $cutadp 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Miseq-general-pindel-archer_incyte_CALR.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai $control_run $control_name 2>&1 | nohup tee -a tmp/$project.nohup


#mv output to batch folder
mkdir /mnt/win-hp3_1/NGS_Cambridge/"$batch"/Pindel_bam2fqcutadp
rsync -avls $workdir/output/251111_M00000_0000_000000000-bam2fqcutadptestarcherincyteCALR/Alignment_fqctbwamem/pindel /mnt/win-hp3_1/NGS_Cambridge/"$batch"/Pindel_bam2fqcutadp/
rsync -avls $workdir/output/251111_M00000_0000_000000000-bam2fqcutadptestarcherincyteCALR/Alignment_fqctbwamem/pindel /mnt/win-hp3_1/NGS_Cambridge/"$batch"/Pindel_bam2fqcutadp/
rsync -avls $workdir/seqs/251111_M00000_0000_000000000-bam2fqcutadptestarcherincyteCALR/Alignment_fqctbwamem /mnt/win-hp3_1/NGS_Cambridge/"$batch"/Pindel_bam2fqcutadp/
rsync -avls $workdir/seqs/251111_M00000_0000_000000000-bam2fqcutadptestarcherincyteCALR/Alignment_fqctbwamem /mnt/win-hp3_1/NGS_Cambridge/"$batch"/Pindel_bam2fqcutadp/

#rm data from local server
mv $workdir/output/251111_M00000_0000_000000000-bam2fqcutadptestarcherincyteCALR $workdir/trash/
mv $workdir/seqs/251111_M00000_0000_000000000-bam2fqcutadptestarcherincyteCALR/ $workdir/trash/

