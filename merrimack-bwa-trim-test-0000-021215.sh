#141125_M00000_0000_A000000000-00000-merrimack-bwa and -trim
# it is merrimack bwa alignment in ouput/xxx using old pipleine, trimmed in test folder, then moved to seq/xxx/Alignment_bwa
------
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_bwa"
samples="+(001-0180)*"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Merrick_Illumina_trim_test
project=141125_M00000_00merrimackbwatrim02_A000000000-00000-merrimack-bwa-trimroi    # change project name
roi=merrimack_CCP.20131001.designed.forigv.merge.g1k.bed
reffai=human_g1k_v37.fasta
nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup



