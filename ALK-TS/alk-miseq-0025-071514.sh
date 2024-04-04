# 140428_M00662_0025_000000000-G01P6
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=3
samples="+(Blinded11-P1|Blinded12-P1|Blinded13-P1|Blinded14-P1|Blinded15-P1|Blinded16-P1|Blinded17-P1|Blinded18-P1|Blinded19-P1|Blinded20-P1|Blinded21-P1|NA12878-P1)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=140428_M00662_0025_000000000-G01P6    # change project name
roi=ALK_final_ROIe20_28Pool1.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=3
samples="+(Blinded11-P2|Blinded12-P2|Blinded13-P2|Blinded14-P2|Blinded15-P2|Blinded16-P2|Blinded17-P2|Blinded18-P2|Blinded19-P2|Blinded20-P2|Blinded21-P2|NA12878-P2)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=140428_M00662_0025_000000000-G01P6    # change project name
roi=ALK_final_ROIe20_28Pool2.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



