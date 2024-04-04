#!/bin/bash
shopt -s extglob
# 190320_M00662_0299_000000000-D5HBY  # real miseq run, change run name, bed, ref, aln etc.
# 3/21/19 cp from deciphera_3SNP_UGT1A1-miseq-bwamem-varscan-broadexonseqtest.sh for real miseq run, need to change run name, bed, ref, aln etc. See codes/prjts/deciphera_3SNP.sh
# 190215_M00000_0001_000000000-BROAD-ln  # test broad exon seq data on deciphera pipeline, need to change ref (human_g1k_v37.fasta or Homo_sapiens_assembly19.fasta from broad), 
# bed (no chr), samtools extract chr2 to 2, alg (_broad_bwa), see run-files/exon-seqLiquid-Biopsy_Broad.sh. 
# 3/5/19 cp from Celgene0328-miseq-bwamem-varscan-rover-0252-100418.sh for deciphera pipeline, see also codes/prjts/deciphera_3SNP.sh, but using fastq from basespace to
#  do bwamem aln without trimming (like Incyte). Celgene use bam from miseq, Incyte use fastq from basespace and do bwamem without trimming, Novartis/Qiagen FLT3 use fastq and
# do bmwem wt and wto trimmng, BMD use fastq and do bmwem wt trimmng.
# ls /mnt/miseq/Illumina/MiSeqAnalysis/ -ltrh ; 0100 is local miseq run number, AWV1A is flow cell number shared to basesapce
# ls /mnt/win-hp/base_space    to check download folder
# cp from /mnt/win-hp/base_space/ since download fastq from basespace (see 0030, 0044, 0045 etc. for download bam/fastq from bs and cp from /mnt/win-hp/base_space/, or cp from public)
# mkdir -p seqs/190320_M00662_0299_000000000-D5HBY/fq
# cp -pr /mnt/win-hp/base_space/Deciphera_PROJ0370_20Mar2019-123353428/*/*/*fastq.gz seqs/190320_M00662_0299_000000000-D5HBY/fq/
# gunzip seqs/190320_M00662_0299_000000000-D5HBY/fq/*
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
cpdir=/mnt/win-hp/next_gene_seq_wind/share/Miseq_deciphera_3snp
project=190320_M00662_0299_000000000-D5HBY    # change project name
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
cpdir=/mnt/win-hp/next_gene_seq_wind/share/Miseq_deciphera_3snp
project=${project}_UGT1A1    # change project name
roi=deciphera_UGT1A1.bed
roi_mergesort=deciphera_UGT1A1.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed   # does not matter since pairallelecount=n
pairallelecount=n
gn2NM=NVS_genes_and_refRNA_accession_NM_number.xls   # does not matter for Incyte panel

nohup bash $workdir/codes/Miseq-general-deciphera_3SNP.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount \
$gn2NM 2>&1 | nohup tee -a tmp/$proj


# special case, combine and transfer file here since it has 2 pipelines for varscan
#---------------------------------
# combine varscan xls (merge_varscan.xls) from 2 pipelines (1) take ABCG2 2 snps from original bam pipeline:4:89061114_C/T, 4:89052323_G/T  (chr2/4 also ok)
# (2) take UGT1A1 ins 2:234668879_C/+AT from extracted bam pipeline.  (3) Combine them and add each sample with no call if not called.
# output file to (1) label sample no call if no variants (2) keep sample and variants if there is variants.  Not list all 3 snps for each sample.

project=$projectorig  # use original name

if [ -z $alg ]; then alg=""; fi
if [ $alg = "null" ]; then alg=""; fi
if [ $samples = 'all' ]; then samples=*; fi

echo "
# combine varscan.xls
"
seqs_aln=$workdir/seqs/${project}/Alignment${alg}
outs=$workdir/output/${project}/Alignment${alg}
outs1=$workdir/output/${project}_UGT1A1/Alignment${alg}
dir=$outs; dir1=$outs1
file=$dir/${project}_merge_varscan.xls; file1=$dir1/${project}_UGT1A1_merge_varscan.xls

rm $dir/${project}_merge_varscan_prewithnocall.xls -f
cat $file | head -1 > $dir/${project}_merge_varscan_prewithnocall.xls

for x in  `ls $seqs_aln/*.bam`
do
 num=`ls $x | grep -o / | wc -l`; num=`expr $num + 1`; x=`ls $x | cut -d/ -f$num`  # get field number, then cut filename
 x=${x%%.bam}
 echo $x
 barcode=`echo $x | cut -d'_' -f2,2`;samp=`echo $x | cut -d'_' -f1,1`
 run=`echo $project | cut -d'_' -f3,3 | sed -e 's/^0*//g' | awk '{print "run"$0}'`
 snpchk=`cat $file | grep "$samp" | grep "4:89052323_G/T\|4:89061114_C/T" | wc -l`
 snpchk1=`cat $file1 | grep "$samp" | grep "2:234668879_C" | wc -l`    # could be C/CAT, C/CATAT,CAT/C, CATAT/C etc.  6AT in reference
 if(($snpchk==0 && $snpchk1==0)); then echo | awk 'BEGIN{FS=OFS="\t"};{print run"_"barcode"\t"run"\t"barcode"\t"samp"\tno SNP"}' run=$run barcode=$barcode samp=$samp \
     >> $dir/${project}_merge_varscan_prewithnocall.xls; fi
 for snp in "2:234668879_C"     # could be C/CAT, C/CATAT,CAT/C, CATAT/C etc.  6AT in reference.
  do
   echo $snp
   chk=`cat $file1 | grep "$samp" | grep "$snp" | wc -l`
   if(($chk>0)); then cat $file1 | grep "$samp" | grep "$snp" >> $dir/${project}_merge_varscan_prewithnocall.xls; fi
#   if(($chk==0)); then echo | awk 'BEGIN{FS=OFS="\t"};{print run"_"barcode"\t"run"\t"barcode"\t"samp"\t"snp"\tno SNP"}' run=$run barcode=$barcode samp=$samp snp=$snp \
#     >> $dir/${project}_merge_varscan_prewithnocall.xls; fi
  done
 for snp in "4:89052323_G/T" "4:89061114_C/T"
  do
   echo $snp
   chk=`cat $file | grep "$samp" | grep "$snp" | wc -l`
   if(($chk>0)); then cat $file | grep "$samp" | grep "$snp" >> $dir/${project}_merge_varscan_prewithnocall.xls; fi
#   if(($chk==0)); then echo | awk 'BEGIN{FS=OFS="\t"};{print run"_"barcode"\t"run"\t"barcode"\t"samp"\t"snp"\tno SNP"}' run=$run barcode=$barcode samp=$samp snp=$snp \
#     >> $dir/${project}_merge_varscan_prewithnocall.xls; fi
  done
done

# split above file column "Cons:Cov:Reads1:Reads2:Freq:P-value" to get cov and mut freq
# also do custome format: 1. Column name R1/R2, Reads1/Reads2 to Ref/Alt, Cov to Total Cov, Var to Alt, remvoe Return and add Annotation
# 2. remvoe columns "SamplesRef	SamplesHet	SamplesHom	SamplesNC	Cons:Cov:Reads1:Reads2:Freq:P-value.1", so keep 1:13 col, and add annotation col
# 3. Annotation add snp id and 7AT, 8AT, or 5AT etc for indel (ref have 6AT): ABCG2 rs2231137 (SNP) at chr4:89061114-89061114 (Hg19)
#   ii.     ABCG2 rs2231142  - (TaqMan SNP Assay C__15854163_70) at chr4:89052323-89052323
Rscript -e " \
library(stringr); \
xls=read.csv('$dir/${project}_merge_varscan_prewithnocall.xls', sep='\t', head=T, as.is=T, check.names=F, row.names=NULL); xls[xls==T]='T'; dim(xls); \
covfreq=t(apply(xls,1,function(x){a=unlist(strsplit(x['Cons:Cov:Reads1:Reads2:Freq:P-value'],':')); c(a[2],a[5])})); \
xls=cbind(xls[,1:9],Cov=covfreq[,1],freq=covfreq[,2],xls[,10:dim(xls)[2]]); \
xls=xls[,1:13]; annot=apply(xls,1,function(x){annot=x['var_key'];if(grepl('4:89052323_G/T',x['var_key']))annot='rs2231142'; if(grepl('4:89061114_C/T',x['var_key']))annot='rs2231137'; \
if(grepl('2:234668879_C',x['var_key'])){annot=paste(6+str_count(x['Var'],'AT')-str_count(x['Ref'],'AT'),'AT', sep='')}; annot }); \
xls=cbind(xls,Annotation=annot); \
colnames(xls)=gsub('Reads1|R1','Ref',colnames(xls)); colnames(xls)=gsub('Reads2|R2','Alt',colnames(xls)); \
colnames(xls)[colnames(xls)=='Cov']='Total Cov'; colnames(xls)[colnames(xls)=='Var']='Alt'; \
write.table(xls,file='$dir/${project}_merge_varscan_withnocall.xls', row.names=F, sep='\t',quote=F, na=''); \
"

#cp and merge all runs
#-----------------
cptype=all # all, varscan, msr
cpdir=/mnt/win-hp/next_gene_seq_wind/share/Miseq_deciphera_3snp
dir2=$cpdir/$project/Alignment${alg}

if [ $cptype = 'all' ]  #@@@@@@@@@@beg
then
echo "cp all: gatk, varscan, MSR"
dir1=output/${project}/Alignment${alg}
cp $dir1 $dir2/output/ -r
fi

varsum=$cpdir/Var_summary_varscan

cp $dir2/output/Alignment${alg}/*merge_varscan_withnocall.xls $varsum/
fls=`ls $varsum/*merge_varscan_withnocall.xls | grep -v All_runs`
cat $fls | awk 'NR==1{cln=$0; print $0}; NR>1{if($0!=cln)print $0}' > $varsum/All_runs_merge_varscan_withnocall.xls


# special case, combine and transfer file here since it has 2 pipelines for bcftools
#---------------------------------------------
project=$projectorig  # use original name

if [ -z $alg ]; then alg=""; fi
if [ $alg = "null" ]; then alg=""; fi
if [ $samples = 'all' ]; then samples=*; fi

echo "
# combine bcftools.addcol.new.vcf
"
seqs_aln=$workdir/seqs/${project}/Alignment${alg}
outs=$workdir/output/${project}/Alignment${alg}/bcftools
outs1=$workdir/output/${project}_UGT1A1/Alignment${alg}/bcftools
dir=$outs; dir1=$outs1
file=$dir/${project}_merge_bcftools.addcol.new.vcf; file1=$dir1/${project}_UGT1A1_merge_bcftools.addcol.new.vcf

rm $dir/${project}_merge_bcftools.xls -f
cat $file | head -1 | cut -f8,12 --complement > $dir/${project}_merge_bcftools.xls

for x in  `ls $seqs_aln/*.bam`
do
 num=`ls $x | grep -o / | wc -l`; num=`expr $num + 1`; x=`ls $x | cut -d/ -f$num`  # get field number, then cut filename
 x=${x%%.bam}
 echo $x
 barcode=`echo $x | cut -d'_' -f2,2`;samp=`echo $x | cut -d'_' -f1,1`
 run=`echo $project | cut -d'_' -f3,3 | sed -e 's/^0*//g' | awk '{print "run"$0}'`
 snpchk=`cat $file | grep "$samp" | grep "4:89052323_G/T\|4:89061114_C/T" | wc -l`
 snpchk1=`cat $file1 | grep "$samp" | grep "2:234668879_C" | wc -l`    # could be C/CAT, C/CATAT,CAT/C, CATAT/C etc.  6AT in reference
 if(($snpchk==0 && $snpchk1==0)); then echo | awk 'BEGIN{FS=OFS="\t"};{print run"_"barcode"\t"run"\t"barcode"\t"samp"\tno SNP"}' run=$run barcode=$barcode samp=$samp \
     >> $dir/${project}_merge_bcftools.xls; fi
 for snp in "2:234668879_C"     # could be C/CAT, C/CATAT,CAT/C, CATAT/C etc.  6AT in reference.
  do
   echo $snp
   chk=`cat $file1 | grep "$samp" | grep "$snp" | wc -l`
   if(($chk>0)); then cat $file1 | grep "$samp" | grep "$snp" | cut -f8,12 --complement >> $dir/${project}_merge_bcftools.xls; fi
  done
 for snp in "4:89052323_G/T" "4:89061114_C/T"
  do
   echo $snp
   chk=`cat $file | grep "$samp" | grep "$snp" | wc -l`
   if(($chk>0)); then cat $file | grep "$samp" | grep "$snp" | cut -f8,12 --complement >> $dir/${project}_merge_bcftools.xls; fi
  done
done

# reformat ref/alt sequence chr2:234668879_CATATATATATATATA/CATATATATATATATATA as chr2:234668879_C/CAT
# use awk to count AT instead of R like above, also lower TA repeat by 1 (CA-6TA-TAA),last TA not count. Also remformat some cols and names.
cat $dir/${project}_merge_bcftools.xls | awk '
 function abs(v) {return v < 0 ? -v : v};
 BEGIN{FS=OFS="\t"};
 NR==1{$13="Ferq(%)";$14="Annotation";print}; 
 NR>1{ 
   if($5~/4:89052323_G\/T/)$14="rs2231142";
   if($5~/4:89061114_C\/T/)$14="rs2231137";
   if(($5~/2:234668879_C/)){
     refat=gsub(/AT/, "",$8); altat=gsub(/AT/, "",$9); repeat=""; for(i=1;i<=abs(altat-refat);i++)repeat=repeat"AT";
     if(refat<altat){ref="C"; alt="C"repeat};if(refat>altat){alt="C"; ref="C"repeat}; if(refat==altat){alt="C"; ref="C"};
     $8=ref; $9=alt; $5=$6":"$7"_"$8"/"$9; $14=$14-1; $14=$14"AT";
   }
   if($5~/no SNP/)$14="no SNP";
   if(!($5~/no SNP/))$13=$13*100;
   print $0
}'  > $dir/${project}_merge_bcftools_reformat.xls


#cp and merge all runs
#-----------------
cptype=all # all, varscan, msr
cpdir=/mnt/win-hp/next_gene_seq_wind/share/Miseq_deciphera_3snp
dir2=$cpdir/$project/Alignment${alg}/

if [ $cptype = 'all' ]  #@@@@@@@@@@beg
then
echo "cp all: gatk, varscan, MSR"
dir1=output/${project}/Alignment${alg}
cp $dir1 $dir2/output/ -r
fi

varsum=$cpdir/Var_summary_bcftools

cp $dir2/output/Alignment${alg}/bcftools/*merge_bcftools.xls $varsum/
fls=`ls $varsum/*merge_bcftools.xls | grep -v All_runs`
cat $fls | awk 'NR==1{cln=$0; print $0}; NR>1{if($0!=cln)print $0}' > $varsum/All_runs_merge_bcftools.xls

cp $dir2/output/Alignment${alg}/bcftools/*merge_bcftools_reformat.xls $varsum/
fls=`ls $varsum/*merge_bcftools_reformat.xls | grep -v All_runs`
cat $fls | awk 'NR==1{cln=$0; print $0}; NR>1{if($0!=cln)print $0}' > $varsum/All_runs_merge_bcftools_reformat.xls

