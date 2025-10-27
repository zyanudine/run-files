#!/bin/bash
shopt -s extglob
# 6/3/25 cp from run-files/deciphera_3SNP_UGT1A1/deciphera_3SNP_UGT1A1-miseq-bwamem-bcftools-G8N47-080921.sh for WES UGT1A1, modify accordingly
# see also codes/prjts/WES-HLA-PGx-etc.sh, see original file for history details
# modify accordingly:  try to run the whole pipeline, but change folders to network share, so minize changes
# 9/12/25 cp from run-files/WES_UGT1A1/250324_ADX00139_0021_AHVYMMDMXY.sh (from run-files/deciphera_3SNP_UGT1A1/deciphera_3SNP_UGT1A1-miseq-bwamem-bcftools-G8N47-080921.sh)
#  for TSO500_ctDNA_ESR1. Modify accordingly. see also codes/prjts/tso500_ctDNA_ESR1.sh

# 3snp pipeline
#------
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_tso500"
#samples="+(A3107_S21|A3214_S20)*"
samples=all
#samples="+(B10)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=/mnt/win-hp3_1/NGS_Cambridge/next_gene_seq_wind/share/Novaseq-TS0500_ctDNA_Dragen_ESR1
project=DRAGEN_TSO500_CTDNA_2.6.2_Analysis_20250728-140700    # change project name
roi=TSO500_ctDNA_ESR1.bed
roi_mergesort=TSO500_ctDNA_ESR1.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed   # does not matter since pairallelecount=n
pairallelecount=n
gn2NM=NVS_genes_and_refRNA_accession_NM_number.xls   # does not matter for Incyte panel
# save project name so it can be used later
projectorig=$project

mkdir -p $workdir/tmp

#link bam files, usually should be done in codes/Novaseq-TS0500_ctDNA-dragen-ESR1-auto-run.sh, but if run manully, do it
#project=$run; alg="_tso500"
mnt=/mnt
seqs_aln=$workdir/seqs/${project}/Alignment${alg}
novaseqdx=Dragen-RUO-NAS/Output-Dragen-RUOserver
if ! [ -d $seqs_aln ]; then
mkdir -p $seqs_aln
ln -s /$mnt/$novaseqdx/$project/Logs_Intermediates/DragenCaller/*/*_tumor.+(bam|bam.bai) $seqs_aln/
fi

#nohup bash $workdir/codes/Miseq-general-deciphera_3SNP.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount $gn2NM 2>&1 | nohup tee -a tmp/$project.nohup


# extract bam for UGT1A1, use chr2, not 2， to new folder seqs/${project}_UGT1A1/Alignment${alg}
#--------
pkgs=$workdir/packages
seqs_aln=$workdir/seqs/${project}/Alignment${alg}
seqs_aln_extr=$workdir/seqs/${project}_ESR1/Alignment${alg}
mkdir -p $seqs_aln_extr
for x in `ls ${seqs_aln}/*bam | xargs -n1 basename`; do
sample=${x%%.bam}
echo $sample
if ! [ -f $seqs_aln_extr/$sample.bam ]; then
echo $x
$pkgs/samtools-0.1.18/samtools view -h $seqs_aln/$sample.bam chr6:151977826-152450754 | $pkgs/samtools-0.1.18/samtools view -hSb - > $seqs_aln_extr/$sample.bam
$pkgs/samtools-0.1.18/samtools index $seqs_aln_extr/$sample.bam $seqs_aln_extr/$sample.bam.bai
fi
done


# UGT1A1 pipline
#---------
cd $workdir
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_tso500"
#samples="+(A3107_S21|A3214_S20)*"
samples=all
#samples="+(B10)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=/mnt/win-hp3_1/NGS_Cambridge/next_gene_seq_wind/share/Novaseq-TS0500_ctDNA_Dragen_ESR1
project=${project}_ESR1    # change project name
roi=TSO500_ctDNA_ESR1.bed
roi_mergesort=TSO500_ctDNA_ESR1.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed   # does not matter since pairallelecount=n
pairallelecount=n
gn2NM=NVS_genes_and_refRNA_accession_NM_number.xls   # does not matter for Incyte panel

nohup bash $workdir/codes/Miseq-general-tso500_ctDNA_ESR1.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount $gn2NM 2>&1 | nohup tee -a tmp/$project.nohup


# comine 2 pipelines and make report for both varscan and bcftools
#-----------
#project=$projectorig
#cpdir=/mnt/win-hp3_1/next_gene_seq_wind/share/NGS_share/Novaseq_WES_3snp
#nohup bash $workdir/codes/Miseq-deciphera_3SNP-reprot.sh $project $alg $cpdir

