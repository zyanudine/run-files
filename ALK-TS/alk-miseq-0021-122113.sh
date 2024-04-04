# 131220_M00662_0021_000000000-D044D
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=2
samples="+(5P-Postive-control-P1|HorizonDx-5P-P1|MMD2-2-001-P1|MMD2-2-002-P1|MMD2-2-005-P1|MMD2-2-007-P1|MMD2-2-010-P1|MMD2-2-025-P1|MMD2-2-028-P1|MMD2-2-044-P1|MMD2-2-046-P1|NA12878-P1)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=131220_M00662_0021_000000000-D044D    # change project name
roi=ALK_final_ROIe20_28Pool1.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=2
samples="+(5P-Postive-control-P2|HorizonDx-5P-P2|MMD2-2-001-P2|MMD2-2-002-P2|MMD2-2-005-P2|MMD2-2-007-P2|MMD2-2-010-P2|MMD2-2-025-P2|MMD2-2-028-P2|MMD2-2-044-P2|MMD2-2-046-P2|NA12878-P2)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=131220_M00662_0021_000000000-D044D    # change project name
roi=ALK_final_ROIe20_28Pool2.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



