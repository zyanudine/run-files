# 181001_M00662_0251_000000000-D52T2
# 10/2/18 cp from Incyte-miseq-bwamem-varscan-rover-0250-092418.sh,  for Celgene_PROJ0328_01Oct2018_MK, Nextera XT v2, TNFRSF17.AmpliconManifest
#  mainly compute the cov statistics from bam files of Miseq reporter.  Download bam file from 90.60 first, then run, should be ok. Change below accrodlingly.
#  ls seqs/* | grep Alig | sort -u;  to find avaoliable alignment types, make new one Alignment_msr instead Alignment2/3 etc. more reasonable. Manually copy since miseq autocopy not used much now.
# mkdir -p seqs/181001_M00662_0251_000000000-D52T2/Alignment_msr
# cp /mnt/miseq/Illumina/MiSeqOutput/181001_M00662_0251_000000000-D52T2/Data/Intensities/BaseCalls/Alignment2/*+(bam|bai) seqs/181001_M00662_0251_000000000-D52T2/Alignment_msr/
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

------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_msr"
#samples="+(A3107_S21|A3214_S20)*"
samples=all
#samples="+(B10)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_Celgene_TNFRSF17
project=181001_M00662_0251_000000000-D52T2    # change project name
#roi=TruSight_MMD_calculated_ROI.merge.bed
roi=Miseq_Celgene_TNFRSF17.bed
roi_mergesort=Miseq_Celgene_TNFRSF17.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed   # does not matter since pairallelecount=n
pairallelecount=n
gn2NM=NVS_genes_and_refRNA_accession_NM_number.xls   # does not matter for Incyte panel

nohup bash ./codes/Miseq-general-ROVER-Celgene.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount $gn2NM 2>&1 | nohup tee -a tmp/$project.nohup
#date=`date | cut -d' ' -f1-3 | sed -e 's/ /_/g'`
#nohup bash ./codes/Miseq-general-ROVER-FLT3.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $roi_mergesort $reffai $hotspot $pairallelecount 2>&1 | nohup tee -a tmp/${project}_$date.nohup

