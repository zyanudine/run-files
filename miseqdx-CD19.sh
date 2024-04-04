#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

miseqdx=miseqdx18				# miseqdx15 or 16
runfrom=compare   				# “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-cd19-samplesheet.txt 	# miseqdx-run-samplesheet.txt
proj_flt="MOR-CD19"		        	# filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","ivd-reveal-rna_METex14", "ivd-reveal-ctdna_HaveWeMET\|ivd-reveal-rna_METex14"
sharef="/mnt/win-hp1"   		        # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseq-CD19-auto-run.sh $miseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-abl1.nohup

miseqdx=miseqdx19                               # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-cd19-samplesheet.txt        # miseqdx-run-samplesheet.txt
proj_flt="MOR-CD19"                             # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeMET","$
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseq-CD19-auto-run.sh $miseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-abl1.nohup


miseqdx=miseq                                   # miseqdx15 or 16
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Illumina/MiSeqOutput/ from s3 bucket
samplesheet=miseqdx-cd19-samplesheet.txt        # miseqdx-run-samplesheet.txt
proj_flt="MOR-CD19"                             # filter project with key word in SampleSheet.csv "ivd-reveal-ctdna", or "ivd-reveal-ctdna_METex14","ivd-reveal-ctdna_HaveWeME$
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Miseq-CD19-auto-run.sh $miseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-abl1.nohup

