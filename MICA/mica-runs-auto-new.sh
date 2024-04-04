# to generate scripts for multiple runs
cd run-files/MICA
ln=1
echo `cat ../miseq-runs | tail -$ln | awk '{print $1}'`  # run
echo `cat ../miseq-runs | tail -$ln | awk '{print $2}'`  # project
echo `cat ../miseq-runs | tail -$ln | awk '{print $3}'`  # miseq


# script
cd run-files/MICA

#date
date=`date +%d``date +%b | tr [a-z] [A-Z]``date +%Y`

# change run name
ln=1
cat ../miseq-runs | tail -$ln | while read line;
do
run=`echo "$line" | awk '{print $1}'`
proj=`echo "$line" | awk '{print $2}'`
miseqdx=`echo "$line" | awk '{print $3}'`
fl=`echo $run | cut -d'-' -f2,2`

line=$run
Aln=`ls -l /mnt/$miseqdx/Illumina/MiSeqAnalysis/$line -t | grep "^d" | grep Alignment | head -1 | awk '{print $NF}'`  # find latest Alignment_n
alndate=`ls -l /mnt/$miseqdx/Illumina/MiSeqAnalysis/$line/$Aln | grep "^d" | grep "_" | awk '{print $NF}'`  # date folder
echo $miseqdx $run $fl $proj $Aln $alndate

cp  MICA-miseq-bwamem-bcftools-GFGCM-121622.sh MICA-miseq-bwamem-bcftools-$fl-$date.sh
perl -i.bak -pe 's/221215_M70771_0076_000000000-GFGCM/'$run'/g' *-$fl-$date.sh
perl -i.bak -pe 's/Alignment_1\/20221216_073515/'$Aln'\/'$alndate'/g' *-$fl-$date.sh
done
rm -fr *-$date.sh.bak

# run
echo '#!/bin/bash' > 1-mica-runs.sh
echo 'shopt -s extglob' >> 1-mica-runs.sh
echo >> 1-mica-runs.sh

for run in `cat ../miseq-runs | tail -$ln | awk '{print $1}'`
do
fl=`echo $run | cut -d'-' -f2,2`
#echo $run $fl
cat MICA-miseq-bwamem-bcftools-$fl-$date.sh | awk 'NR>=17 && NR<=19{gsub("# ","",$0); print $0}'
echo "nohup run-files/MICA/MICA-miseq-bwamem-bcftools-$fl-$date.sh"
echo
done >>  1-mica-runs.sh

chmod +x 1-mica-runs.sh
