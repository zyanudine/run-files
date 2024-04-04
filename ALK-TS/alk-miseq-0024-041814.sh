# 140417_M00662_0024_000000000-G01JT
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=null
samples="+(Blinded10-P1|Blinded1-P1|Blinded2-P1|Blinded3-P1|Blinded4-P1|Blinded5-P1|Blinded6-P1|Blinded7-P1|Blinded8-P1|Blinded9-P1|NA12878-P1|Pos-Control-P1)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=140417_M00662_0024_000000000-G01JT    # change project name
roi=ALK_final_ROIe20_28Pool1.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=null
samples="+(Blinded10-P2|Blinded1-P2|Blinded2-P2|Blinded3-P2|Blinded4-P2|Blinded5-P2|Blinded6-P2|Blinded7-P2|Blinded8-P2|Blinded9-P2|NA12878-P2|Pos-Control-P2)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=140417_M00662_0024_000000000-G01JT    # change project name
roi=ALK_final_ROIe20_28Pool2.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



