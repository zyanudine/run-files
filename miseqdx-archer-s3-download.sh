#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

#METAMP
miseqdx=miseqdx15				# miseqdx15 or 16, not matter
runfrom=compare   				# “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt 	# miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results         		# Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"                     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14", "ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3_download.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3_download.nohup


# METex14
miseqdx=miseqdx15                               # miseqdx15 or 16, not matter
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14", "ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3_download.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3_download.nohup
