#MMD-Oncomed~test
#varscan after TS4.2.1
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=ONCOMED_AmpliSeq_test
project=Auto_user_MMD-Oncomed~test-Ampliseq_panel
samples="IonXpress_007\|IonXpress_008\|IonXpress_009\|IonXpress_010"
ext=null
reffai=hg19.fasta
roi=ONCOMED_IAD42642_23_Designed_merge.bed
bar2samplefile=ONCOMED_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS

nohup bash ./codes/Ion-general-varscan-ogap-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-ogap-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
#vc TSVC4.2.1
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=ONCOMED_AmpliSeq_test
project=Auto_user_MMD-Oncomed~test-Ampliseq_panel
samples="IonXpress_007\|IonXpress_008\|IonXpress_009\|IonXpress_010"
ext=null
reffai=hg19.fasta
roi=ONCOMED_IAD42642_23_Designed.bed
bar2samplefile=ONCOMED_AmpliSeq_run_barcode_sample_key_sheet.txt
hspt=ONCOMED_Ampliseq.ONCOMED_IAD42642_23_Designed.cosmic.v64.hotspot.rmd.bed
seqserver=TS

nohup bash ./codes/Ion-general-vc-TSVC4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $hspt $seqserver 2>&1 | nohup tee -a tmp/$project.nohup



#ts4.2.1
--
cdl
dtype=plugin_vc
plgin=TSVC4.2.1
cpdir=ONCOMED_AmpliSeq_test
project=Auto_user_MMD-Oncomed~test-Ampliseq_panel
samples="IonXpress_007\|IonXpress_008\|IonXpress_009\|IonXpress_010"
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


