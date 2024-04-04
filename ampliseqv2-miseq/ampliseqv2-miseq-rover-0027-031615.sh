# 150212_M00662_0027_000000000-G020P, use MSR2.2 from bam file, see run 0030 for download to 90.5/e
# download bwa bam from basespace (use downloader), mv to 90.6/share
#mkdir -p seqs/150212_M00662_0027_000000000-G020P/Alignment_bsbwa
#mv share/*+(bam|bai) seqs/150212_M00662_0027_000000000-G020P/Alignment_bsbwa
# basespace bwa use hg19 reference, also not hg19.fasta, use miseq-hg19-genome.fa
# also not use g1k bed, but merged
# 3/16/15 for ROVER pipeline
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_bsbwa"
samples="+(NA12878_S2|TruQ-6_S1)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_Ampliseq_v2_panel
project=150212_M00662_0027_000000000-G020P    # change project name
roi=CHP2.20131001.designed.merge.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-ROVER.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup
