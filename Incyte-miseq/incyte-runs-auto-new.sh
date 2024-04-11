# to generate scripts for multiple runs
cd run-files/Incyte-miseq
ln=3
echo `cat ../miseq-runs | tail -$ln | awk '{print $1}'`  # run
echo `cat ../miseq-runs | tail -$ln | awk '{print $2}'`  # project

# script
#date
date=`date +%d``date +%b | tr [a-z] [A-Z]``date +%Y`

# change run name
cat ../miseq-runs | tail -$ln | while read line;
do
run=`echo "$line" | awk '{print $1}'`
proj=`echo "$line" | awk '{print $2}'`
fl=`echo $run | cut -d'-' -f2,2`
echo $run $fl $proj
cp Incyte-miseq-pindel-J7TCD-080320.sh Incyte-miseq-pindel-$fl-$date.sh
cp Incyte-miseq-bwamem-varscan-rover-J7TCD-080320.sh Incyte-miseq-bwamem-varscan-rover-$fl-$date.sh
perl -i.bak -pe 's/200731_M70771_0009_000000000-J7TCD/'$run'/g' *-$fl-$date.sh
perl -i.bak -pe 's/Incyte_p327_run11/'$proj'/g' *-$fl-$date.sh
done
rm -fr *-$date.sh.bak

# run
echo '#!/bin/bash' > 1-incyte-runs.sh

for run in `cat ../miseq-runs | tail -$ln | awk '{print $1}'`
do
fl=`echo $run | cut -d'-' -f2,2`
#echo $run $fl
cat Incyte-miseq-bwamem-varscan-rover-$fl-$date.sh | awk 'NR>=8 && NR<=10{gsub("# ","",$0); print $0}'
echo "nohup run-files/Incyte-miseq/Incyte-miseq-bwamem-varscan-rover-$fl-$date.sh"
echo "nohup run-files/Incyte-miseq/Incyte-miseq-pindel-$fl-$date.sh"
echo
done >>  1-incyte-runs.sh



# from May 2023 use codes/Miseq-Incyte-auto-run.sh for auto run, or use run-files/miseqdx-incyte-test.sh for make run scripts only wihout run
