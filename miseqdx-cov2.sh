#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

miseqdx=miseqdx19                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-cov2-samplesheet.txt        # miseqdx-run-samplesheet.txt
proj_flt="COVIDseq-p386"                                 # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","$
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseq-COV2-auto-run.sh $miseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-cov2.nohup

