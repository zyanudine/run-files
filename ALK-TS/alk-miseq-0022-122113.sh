# 131222_M00662_0022_000000000-D04MM
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=2
samples="+(10p-H3122-FFPE-P1|2p-H3122-FFPE-P1|5p-H3122-FFPE-P1|HorizonDx-10P-P1|HorizonDx-20P-P1|HorizonDx-50P-P1|HorizonDx-5P-P1|Mut-H3122-FFPE-P1|NA12878-P1|NTC-P1|WT-H3122-FFPE-P1)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=131222_M00662_0022_000000000-D04MM    # change project name
roi=ALK_final_ROIe20_28Pool1.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg=2
samples="+(10p-H3122-FFPE-P2|2p-H3122-FFPE-P2|5p-H3122-FFPE-P2|HorizonDx-10P-P2|HorizonDx-20P-P2|HorizonDx-50P-P2|HorizonDx-5P-P2|Mut-H3122-FFPE-P2|NA12878-P2|NTC-P2|WT-H3122-FFPE-P2)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=131222_M00662_0022_000000000-D04MM    # change project name
roi=ALK_final_ROIe20_28Pool2.bed
reffai=miseq-hg19-genome.fa
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



