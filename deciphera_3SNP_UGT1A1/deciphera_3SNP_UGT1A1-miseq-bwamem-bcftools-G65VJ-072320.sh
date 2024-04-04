#!/bin/bash
shopt -s extglob
# 200722_M00662_0354_000000000-G65VJ  # real miseq run, change run name, bed, ref, aln etc.
# 3/21/19 cp from deciphera_3SNP_UGT1A1-miseq-bwamem-varscan-broadexonseqtest.sh for real miseq run, need to change run name, bed, ref, aln etc. See codes/prjts/deciphera_3SNP.sh
# 190215_M00000_0001_000000000-BROAD-ln  # test broad exon seq data on deciphera pipeline, need to change ref (human_g1k_v37.fasta or Homo_sapiens_assembly19.fasta from broad), 
# bed (no chr), samtools extract chr2 to 2, alg (_broad_bwa), see run-files/exon-seqLiquid-Biopsy_Broad.sh. 
# 3/5/19 cp from Celgene0328-miseq-bwamem-varscan-rover-0252-100418.sh for deciphera pipeline, see also codes/prjts/deciphera_3SNP.sh, but using fastq from basespace to
#  do bwamem aln without trimming (like Incyte). Celgene use bam from miseq, Incyte use fastq from basespace and do bwamem without trimming, Novartis/Qiagen FLT3 use fastq and
# do bmwem wt and wto trimmng, BMD use fastq and do bmwem wt trimmng.
# ls /mnt/miseq/Illumina/MiSeqAnalysis/ -ltrh ; 0100 is local miseq run number, AWV1A is flow cell number shared to basesapce
# ls /mnt/win-hp/base_space    to check download folder
# cp from /mnt/win-hp/base_space/ since download fastq from basespace (see 0030, 0044, 0045 etc. for download bam/fastq from bs and cp from /mnt/win-hp/base_space/, or cp from public)
# mkdir -p seqs/200722_M00662_0354_000000000-G65VJ/fq
# cp -pr /mnt/win-hp/base_space/Deciphera_PROJ0370_20Mar2019-123353428/*/*/*fastq.gz seqs/200722_M00662_0354_000000000-G65VJ/fq/
#   7/23/20 cp from basemount now
# cp 'BaseSpace/Projects/UGT1A1 PT WL SG Jul2020'/Samples/*/*/*fastq.gz seqs/200722_M00662_0354_000000000-G65VJ/fq/
# gunzip seqs/200722_M00662_0354_000000000-G65VJ/fq/*
# 10/2/18 cp from Incyte-miseq-bwamem-varscan-rover-0250-092418.sh,  for Celgene_PROJ0328_01Oct2018_MK, Nextera XT v2, TNFRSF17.AmpliconManifest
#  mainly compute the cov statistics from bam files of Miseq reporter.  Download bam file from 90.60 first, then run, should be ok. Change below accrodlingly.
#  ls seqs/* | grep Alig | sort -u;  to find avaoliable alignment types, make new one Alignment_msr instead Alignment2/3 etc. more reasonable. Manually copy since miseq autocopy not used much now.
# mkdir -p seqs/181002_M00662_0252_000000000-C5682/Alignment_msr
# cp /mnt/miseq/Illumina/MiSeqOutput/181002_M00662_0252_000000000-C5682/Data/Intensities/BaseCalls/Alignment/*+(bam|bai) seqs/181002_M00662_0252_000000000-C5682/Alignment_msr/
# 5/22/17 for Incyte pipeline  # fq no trim, varscan only
# 10/31/16 cp from  Novartis_Myloid_FLT3-ampliseq-miseq-fqnctbwamem-pindel-0044-012816.sh, varscan cov/read/strand change
# ls /mnt/miseq/Illumina/MiSeqAnalysis/ -ltrh ; 0100 is local miseq run number, AWV1A is flow cell number shared to basesapce
# ls /mnt/win-hp/base_space    to check download folder
# 12/14/15 cut fastq, bwamem alignement, varscan , rover
# cp from /mnt/win-hp/base_space/ since download fastq from basespace (see 0030, 0044, 0045 etc. for download bam/fastq from bs and cp from /mnt/win-hp/base_space/, or cp from public)
# mkdir -p seqs/180921_M00662_0250_000000000-C34TB/fq
# cp -pr /mnt/win-hp/base_space/BMD_TruSight_run_16-95021238/*/*/*fastq.gz seqs/180921_M00662_0250_000000000-C34TB/fq/
# gunzip seqs/180921_M00662_0250_000000000-C34TB/fq/*
# basespace bwa use hg19 reference, also not hg19.fasta, use miseq-hg19-genome.fa
# 3/16/15 for ROVER pipeline
# 10/30/15 for pindel pipeline

# 3snp pipeline
#------

#workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_fqnctbwamem"
#samples="+(A3107_S21|A3214_S20)*"
samples=all
#samples="+(B10)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=/mnt/win-hp1/next_gene_seq_wind/share/Miseq_deciphera_3snp
project=200722_M00662_0354_000000000-G65VJ    # change project name
roi=deciphera_3SNP.bed
roi_mergesort=deciphera_3SNP.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed   # does not matter since pairallelecount=n
pairallelecount=n
gn2NM=NVS_genes_and_refRNA_accession_NM_number.xls   # does not matter for Incyte panel
# save project name so it can be used later
projectorig=$project

mkdir -p $workdir/tmp

nohup bash $workdir/codes/Miseq-general-deciphera_3SNP.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount \
$gn2NM 2>&1 | nohup tee -a tmp/$project.nohup


# extract bam for UGT1A1, use chr2, not 2， to new folder seqs/${project}_UGT1A1/Alignment${alg}
#--------
pkgs=$workdir/packages
seqs_aln=$workdir/seqs/${project}/Alignment${alg}
seqs_aln_extr=$workdir/seqs/${project}_UGT1A1/Alignment${alg}
mkdir -p $seqs_aln_extr
for x in `ls ${seqs_aln}/*bam | xargs -n1 basename`; do
sample=${x%%.bam}
echo $sample
grep -Fx -f <($pkgs/samtools-0.1.18/samtools view -h $seqs_aln/$sample.bam chr2:234668875-234668875) <($pkgs/samtools-0.1.18/samtools view -h $seqs_aln/$sample.bam \
chr2:234668900-234668900) | $pkgs/samtools-0.1.18/samtools view -hSb - > $seqs_aln_extr/$sample.bam
$pkgs/samtools-0.1.18/samtools index $seqs_aln_extr/$sample.bam $seqs_aln_extr/$sample.bam.bai
done


# UGT1A1 pipline
#---------
cd $workdir
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_fqnctbwamem"
#samples="+(A3107_S21|A3214_S20)*"
samples=all
#samples="+(B10)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=/mnt/win-hp1/next_gene_seq_wind/share/Miseq_deciphera_UGT1A1
project=${project}_UGT1A1    # change project name
roi=deciphera_UGT1A1.bed
roi_mergesort=deciphera_UGT1A1.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed   # does not matter since pairallelecount=n
pairallelecount=n
gn2NM=NVS_genes_and_refRNA_accession_NM_number.xls   # does not matter for Incyte panel

nohup bash $workdir/codes/Miseq-general-deciphera_3SNP.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount \
$gn2NM 2>&1 | nohup tee -a tmp/$proj


# comine 2 pipelines and make report for both varscan and bcftools
#-----------
project=$projectorig
cpdir=/mnt/win-hp1/next_gene_seq_wind/share/Miseq_deciphera_3snp
nohup bash $workdir/codes/Miseq-deciphera_3SNP-reprot.sh $project $alg $cpdir
