# 150205_M00662_0026_000000000-G01UP, use MSR2.2-new from fq file
# download fq from basespace, mv to 90.6/share
#mkdir -p seqs/150205_M00662_0026_000000000-G01UP/fq
#mv share/*fastq.gz seqs/150205_M00662_0026_000000000-G01UP/fq/
#gunzip *
------
cdl
dtype=msr_vc+fastq  # all, msr_vc,fastq, bam_bai
alg="null+_bwa"
samples="+(NA12848_S1_L001|TruQ-7_S2_L001)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_Ampliseq_v2_panel
project=150205_M00662_0026_000000000-G01UP    # change project name
roi=CHP2.20131001.designed.merge.g1k.bed
reffai=human_g1k_v37.fasta
nohup bash ./codes/Miseq-general-MSR2.2-new.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup
