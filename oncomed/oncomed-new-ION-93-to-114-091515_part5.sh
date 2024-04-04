#Ion-93 to Ion-114, 25 runs, 53 barcodes, see codes/prjts/oncomed_123gene_ampliseq_new.sh
#untrim-ogap-varscan+TSVCtrim
#-----------------
#varscan after TS4.2.1
#--
for x in `ls seqs/ | grep Auto_user_ION | sort -t_ -k3.9,3.10n | awk 'NR>=21 && NR<=25'`
do
echo $x

cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=ONCOMED_AmpliSeq_test_nohotspot_new
project=$x
samples=all
ext=null
reffai=hg19.fasta
roi=ONCOMED_IAD42642_23_Designed_merge.bed
bar2samplefile=ONCOMED_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS

nohup bash ./codes/Ion-general-varscan-ogap-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-ogap-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup


#vc TSVC4.2.1
#--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=ONCOMED_AmpliSeq_test_nohotspot_new
project=$x
samples=all
ext=null
reffai=hg19.fasta
roi=ONCOMED_IAD42642_23_Designed.bed
bar2samplefile=ONCOMED_AmpliSeq_run_barcode_sample_key_sheet.txt
#hspt=ONCOMED_Ampliseq.ONCOMED_IAD42642_23_Designed.cosmic.v64.hotspot.rmd.bed
hspt=null
seqserver=TS

nohup bash ./codes/Ion-general-vc-TSVC4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $hspt $seqserver 2>&1 | nohup tee -a tmp/$project.nohup



#ts4.2.1
#--
cdl
dtype=plugin_vc
plgin=TSVC4.2.1
cpdir=ONCOMED_AmpliSeq_test_nohotspot_new
project=$x
samples=all
roi=ONCOMED_IAD42642_23_Designed.bed
control=null
# pl=pool1
# plg=cp1
# bcf=/mnt/win-hp/next_gene_seq_wind/share/public/Notch_AmpliSeq_run_barcode_sample_key_sheet_ds.txt
# run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
# smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
# if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-ONCOMED-ogap-TSVC4.2.1.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
# fi


#varscan from trim bam
#--------------
#varscan after TS4.2.1 trim
#--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=ONCOMED_AmpliSeq_test_nohotspot_new
project=$x
samples=all
ext=null
reffai=hg19.fasta
roi=ONCOMED_IAD42642_23_Designed_merge.bed
bar2samplefile=ONCOMED_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS

nohup bash ./codes/Ion-general-varscan-trim-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-trim-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup


# varscan from trim bam, and TSVC from trim
#----------------
# cp TSVCtrim varscan, TSVCtrim (VC)
project=$x
#projectn=${project}_trim
#lf=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
#mkdir -p $lf/output/$projectn
#cp -pr $lf/output/$project/TSVC4.2.1 $lf/output/$projectn/
#cp -pr $lf/output/$project/Varscan-trim $lf/output/$projectn/
#cp -pr $lf/output/$project/Varscan-mpileup2indel-trim $lf/output/$projectn/

#ts4.2.1
#--
cdl
dtype=plugin_vc
plgin=TSVC4.2.1
cpdir=ONCOMED_AmpliSeq_test_nohotspot_new
project=$x
#projectn=${project}_trim
samples=all
roi=ONCOMED_IAD42642_23_Designed.bed
control=null
# pl=pool1
# plg=cp1
# bcf=/mnt/win-hp/next_gene_seq_wind/share/public/Notch_AmpliSeq_run_barcode_sample_key_sheet_ds.txt
# run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
# smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
# if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-ONCOMED-trim-TSVC4.2.1.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
# fi


done
