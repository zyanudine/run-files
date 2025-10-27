#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

novaseqdx=Dragen-RUO-NAS/Output-Dragen-RUOserver  # nextseq31, Dragen-RUO-NAS/Output-Dragen-RUOserver
runfrom=samplesheet    			 	  # “samplesheet” or “compare” compare miseqdx /mnt/nextseqxx/Output/
samplesheet=novaseq-dragen-ts0500-ESR1-samplesheet.txt  # novaseq-dragen-ts0500-samplesheet.txt
proj_flt="TSO500ctDNA"		        	  # filter project with key word in SampleSheet.csv "TSO500ctDNA|TSO500\|P393\|TSOComp\|P22510014\|P45830009"
sharef="/mnt/win-hp3_1/NGS_Cambridge"             # share folder /mnt/win-hp or /mnt/win-hp3_1/NGS_Cambridge etc.

nohup bash $workdir/codes/Novaseq-TS0500_ctDNA-dragen-ESR1-auto-run.sh $novaseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/novaseq-ts0500_ctDNA-dragen.nohup

: '
novaseqdx=win-hp3_4/ISL-PRD/Output-Dragen-RUOserver  # nextseq31, Dragen-RUO-NAS/Output-Dragen-RUOserver
runfrom=samplesheet                               # “samplesheet” or “compare” compare miseqdx /mnt/nextseqxx/Output/
samplesheet=novaseq-dragen-ts0500-ESR1-samplesheet.txt  # novaseq-dragen-ts0500-samplesheet.txt
proj_flt="TSO500ctDNA"                            # filter project with key word in SampleSheet.csv "TSO500ctDNA|TSO500\|P393\|TSOComp\|P22510014\|P45830009"
sharef="/mnt/win-hp3_1/NGS_Cambridge"             # share folder /mnt/win-hp or /mnt/win-hp3_1/NGS_Cambridge etc.

nohup bash $workdir/codes/Novaseq-TS0500_ctDNA-dragen-ESR1-auto-run.sh $novaseqdx $runfrom $samplesheet $proj_flt $sharef 2>&1 | nohup tee -a tmp/novaseq-ts0500_ctDNA-dragen.nohup
'
