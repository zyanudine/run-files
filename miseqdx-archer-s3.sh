#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

#METAMP
#-------------------------------
miseqdx=miseqdx18				# miseqdx15 or 16
runfrom=compare   				# “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt 	# miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results         		# Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"		        # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"   		        # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx19                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"		        # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx20                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"                     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx21                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"                     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx22                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"                     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx23                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"                     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx24                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"                     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx25                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"                     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx26                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"                     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx27                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam01-prod-seq-output-s3"    # s3://compote-cam01-prod-seq-output-s3/
s3out="s3://compote-cam01-prod-result-s3"       # s3://compote-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna"                     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

#METex14
#----------------------------------------
miseqdx=miseqdx18                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx19                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx20                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx21                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx22                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx23                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx24                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx25                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx26                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx27                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://metex14-cam01-prod-seq-output-s3"    # s3://metex14-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14          # Miseqdx-Archer-S3-results-METex14
proj_flt="VISB\|VIST,ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14" # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup


#Stratafide
#----------------------------------------
miseqdx=miseqdx18                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx19                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx20                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx21                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx22                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx23                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx24                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx25                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx26                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx27                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

nextseqdx=nextseq31                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=nextseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://blueberry-cam01-prod-seq-output-s3"  # s3://blueberry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Nextseqdx-Archer-S3-results-Stratafide       # Miseqdx-Archer-S3-results-Stratafide
proj_flt="ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide"     # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd$
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Nextseqdx-archerdx_s3.sh $nextseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup


#METex14 Invitae
#----------------------------------------
miseqdx=miseqdx18                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx19                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx20                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx21                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx22                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx23                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx24                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx25                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx26                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx27                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://cherry-cam01-prod-seq-output-s3"     # s3://cherry-cam01-prod-seq-output-s3
s3out="s3://metex14-cam01-prod-result-s3"       # s3://metex14-cam01-prod-result-s3
outs=Miseqdx-Archer-S3-results-METex14-Invitae  # Miseqdx-Archer-S3-results-METex14-Invitae
proj_flt="cherry,ivd-reveal-rna_METex14"               # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", or "ivd-reveal-dna_Stratafide\|ivd-reveal-rna_Stratafide", or "ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup


#METMAX
#----------------------------------------------
miseqdx=miseqdx18				# miseqdx15 or 16
runfrom=compare   				# “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt 	# miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"		# filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"   		        # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx19                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"		# filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx20                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"                # filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx21                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"                # filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx22                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"                # filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx23                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"                # filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx24                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"                # filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx25                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"                # filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx26                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"                # filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

miseqdx=miseqdx27                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-run-samplesheet.txt         # miseqdx-run-samplesheet.txt
s3in="s3://compote-cam02-prod-seq-output-s3"    # s3://compote-cam02-prod-seq-output-s3/
s3out="s3://compote-cam02-prod-result-s3"       # s3://compote-cam02-prod-result-s3
outs=Miseqdx-Archer-S3-results-METMAX           # Miseqdx-Archer-S3-results-METMAX
proj_flt="ivd-reveal-rna_METmax"                # filter project with key word in SampleSheet.csv "ivd-reveal-rna_METmax", or "ivd-reveal-rna_METmax_METex14","ivd-reveal-rna_METmax_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-rna_METmax_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseqdx-archerdx_s3.sh $miseqdx $runfrom $samplesheet $s3in $s3out $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_s3.nohup

