# 131227_M00662_0023_000000000-D04MH
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=2
samples="+(5P-Postive-control-P1|HorizonDx-50P-P1|HorizonDx-5P-P1|HorizonDx-5P-P1|MMD2-2-074Z-P1|MMD2-2-078-P1|MMD2-2-079A-P1|MMD2-6-033-P1|MMD2-6-034-P1|MMD2-6-035-P1|NA12878-P1|NTC-P1)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=131227_M00662_0023_000000000-D04MH    # change project name
roi=ALK_final_ROIe20_28Pool1.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup


cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=2
samples="+(5P-Postive-control-P2|HorizonDx-50P-P2|HorizonDx-5P-P2|HorizonDx-5P-P2|MMD2-2-074Z-P2|MMD2-2-078-P2|MMD2-2-079A-P2|MMD2-6-033-P2|MMD2-6-034-P2|MMD2-6-035-P2|NA12878-P2|NTC-P2)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=131227_M00662_0023_000000000-D04MH    # change project name
roi=ALK_final_ROIe20_28Pool2.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



