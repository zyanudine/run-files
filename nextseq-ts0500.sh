#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

nextseqdx=nextseq31				# nextseq31
runfrom=compare   				# “samplesheet” or “compare” compare miseqdx /mnt/nextseqxx/Output/
samplesheet=nextseq-ts0500-samplesheet.txt 	# nextseq-ts0500-samplesheet.txt
proj_flt="TSO500"		        	# filter project with key word in SampleSheet.csv "TSO500\|P393\|TSOComp\|P22510014\|P45830009"
sharef="/mnt/win-hp1"   		        # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Nextseq-TS0500-auto-run.sh $nextseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/nextseq-ts0500.nohup

nextseqdx=nextseq33                             # nextseq31
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/nextseqxx/Output/
samplesheet=nextseq-ts0500-samplesheet.txt      # nextseq-ts0500-samplesheet.txt
proj_flt="TSO500"                               # filter project with key word in SampleSheet.csv "TSO500\|P393\|TSOComp\|P22510014\|P45830009"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Nextseq-TS0500-auto-run.sh $nextseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/nextseq-ts0500.nohup


# if /mnt/nextseqts0500backup/Output (ln from /mnt/win-hp3_1/NGS_Cambridge/TSO500-RUO-icon-proj393-rawData) runs has same folder structure as on nextseq, also has
# SampleSheet.csv and RunCompletionStatus.xml file
# see also codes/system/mnt-icon.sh for ln -s /mnt/win-hp3_1/NGS_Cambridge/TSO500-RUO-icon-proj393-rawData /mnt/nextseqts0500backup/Output
: '
nextseqdx=nextseqts0500backup                             # nextseq31
runfrom=compare                                 # “samplesheet” or “compare” compare miseqdx /mnt/nextseqxx/Output/
samplesheet=nextseq-ts0500-samplesheet.txt      # nextseq-ts0500-samplesheet.txt
proj_flt="TSO500"                               # filter project with key word in SampleSheet.csv "TSO500\|P393\|TSOComp\|P22510014\|P45830009"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.

nohup bash $workdir/codes/Nextseq-TS0500-auto-run.sh $nextseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/nextseq-ts0500.nohup
'
