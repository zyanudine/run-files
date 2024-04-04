#!/bin/bash
shopt -s extglob

# ------------miseq index check

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

sudo kill -9 `echo \`ps -eo pid,ppid,stime,time,s,cmd | grep -i "Miseq-QC-minotor.sh\|Miseq-QC-git.sh\|Miseqdx-archerdx_index_check.sh" | awk '{print $1}'\``

#METAMP and METEX14
rm -fr $workdir/tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx18                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx19                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx20                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx21                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx22                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx23                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx24                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx25                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx26                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

miseqdx=miseqdx27                               # miseqdx15 or 16
outs="QC-monitor/Miseq-index"                  # Miseqdx-Archer-S3-results
proj_flt="ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"  # "ivd-reveal-ctdna\|ivd-reveal-ctdna_METex14\|ivd-reveal-rna_METex14\|ivd-reveal-ctdna_HaveWeMET"
sharef="/mnt/win-hp1"                           # share folder /mnt/win-hp etc.
nohup bash $workdir/codes/Miseqdx-archerdx_index_check.sh $miseqdx $outs $proj_flt $sharef 2>&1 | nohup tee -a tmp/Miseqdx-archerdx_index_check.nohup

# ------------Miseq QC
rm -fr $workdir/tmp/Miseq-QC-minotor.nohup
nohup bash $workdir/codes/Miseq-QC-minotor.sh 2>&1 | nohup tee -a tmp/Miseq-QC-minotor.nohup




