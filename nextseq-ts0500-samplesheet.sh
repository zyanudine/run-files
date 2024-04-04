#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

miseqdx=nextseq31				# nextseq31
runfrom=samplesheet   				# “samplesheet” or “compare” compare miseqdx /mnt/miseqdx1x/Output/
samplesheet=nextseq-ts0500-samplesheet.txt 	# nextseq-ts0500-samplesheet.txt
proj_flt="P393\|TS0500"		        	# filter project with key word in SampleSheet.csv "P393\|TSO500\|TSOComp"
sharef="/mnt/win-hp1"   		        # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Nextseq-TS0500-auto-run.sh $miseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-abl1.nohup

