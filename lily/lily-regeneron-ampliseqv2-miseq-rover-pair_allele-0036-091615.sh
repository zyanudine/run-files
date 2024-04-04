# 150902_M00662_0036_000000000-AHVGK, use MSR2.2 from bam file
# download bwa bam from basespace (use downloader), directly to 90.5/e/basespace
# mkdir -p seqs/150902_M00662_0036_000000000-AHVGK/Alignment_bsbwa
# mkdir -p miseq-reporter-results/150902_M00662_0036_000000000-AHVGK/BaseCalls/Alignment_bsbwa/Basespace-Picards-cov
# cp /mnt/win-hp/base_space/Plasma_HDX_Amplillumina-24782815/*/*+(bam|bai) seqs/150902_M00662_0036_000000000-AHVGK/Alignment_bsbwa
# cp /mnt/win-hp/base_space/Plasma_HDX_Amplillumina-24782815/*/*.coverage.csv \
# miseq-reporter-results/150902_M00662_0036_000000000-AHVGK/BaseCalls/Alignment_bsbwa/Basespace-Picards-cov/
# change bam file names if barcode is same: i=0; for x in *bam; do i=$(($i+1)); echo $i; nn=`echo $x | sed -e 's/S1/'S$i'/g'`; mv $x $nn; mv $x.bai $nn.bai;done
# basespace bwa use hg19 reference, also not hg19.fasta, use miseq-hg19-genome.fa
# also not use g1k bed, but merged
# 3/16/15 for ROVER pipeline
# 8/5/15 add pair allele count/check
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_bsbwa"
samples=all
#samples="+(A3107_S21|A3214_S20)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_Ampliseq_v2_panel
project=150902_M00662_0036_000000000-AHVGK    # change project name
roi=CHP2.20131001.designed.merge.bed
reffai=miseq-hg19-genome.fa
hotspot=CHP2.20131001.hotspots.bed
pairallelecount=y
nohup bash ./codes/Miseq-general-ROVER.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai $hotspot $pairallelecount 2>&1 | nohup tee -a tmp/$project.nohup
