#!/bin/bash
shopt -s extglob

cdl
dtype=all  # all, msr_vc,fastq, bam_bai
alg=null
samples=all
run=all   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Merrick_Illumina_test
project=141125_M00000_0000_A000000000-00000-merrimack    # change project name
#nohup bash ./codes/Miseq-general.sh $dtype $project $alg $samples $run $ext $cptype $cpdir &

#rerun two samples
dtype=no
#samples=+(05CEU_S5|06R08-0880)*
samples=+(001-0180_CCTCTATC_L001)*
nohup bash ./codes/Miseq-general-merrimack-test.sh $dtype $project $alg $samples $run $ext $cptype $cpdir 2>&1 | nohup tee -a tmp/$project.nohup

