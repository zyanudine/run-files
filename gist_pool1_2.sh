
#SN2-9
------
#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Novartis_GIST_PDX
project=Auto_user_SN2-9-Accuracy_Chip_2_RJS_10_011
samples="IonXpress_009\|IonXpress_010\|IonXpress_011\|IonXpress_012\|IonXpress_013\|IonXpress_014\|IonXpress_015\|IonXpress_016"
ext=null
reffai=hg19.fasta
roi=GIST_ROI_pool1_torrentSuite_ID.bed
bar2samplefile=GIST_AmpliSeq_run_barcode_sample_key_sheet_PDX.txt

nohup bash ./codes/Ion-general-varscan-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup


cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Novartis_GIST_PDX
project=Auto_user_SN2-9-Accuracy_Chip_2_RJS_10_011
samples="IonXpress_025\|IonXpress_026\|IonXpress_027\|IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032"
ext=null
reffai=hg19.fasta
roi=GIST_ROI_pool2_torrentSuite_ID_v3.bed
bar2samplefile=GIST_AmpliSeq_run_barcode_sample_key_sheet_PDX.txt

nohup bash ./codes/Ion-general-varscan-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup


#ts3.4
--

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp1_out+coverageAnalysis_cp1_out
cpdir=Novartis_GIST_PDX
project=Auto_user_SN2-9-Accuracy_Chip_2_RJS_10_011
samples="IonXpress_009\|IonXpress_010\|IonXpress_011\|IonXpress_012\|IonXpress_013\|IonXpress_014\|IonXpress_015\|IonXpress_016"
roi=GIST_ROI_pool1_torrentSuite_ID.bed
control=null
 pl=pool1
 plg=cp1
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/GIST_AmpliSeq_run_barcode_sample_key_sheet_PDX.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-GIST-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi



cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp2_out+coverageAnalysis_cp2_out
cpdir=Novartis_GIST_PDX
project=Auto_user_SN2-9-Accuracy_Chip_2_RJS_10_011
samples="IonXpress_025\|IonXpress_026\|IonXpress_027\|IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032"
roi=GIST_ROI_pool2_torrentSuite_ID_v3.bed
control=null
 pl=pool2
 plg=cp2
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/GIST_AmpliSeq_run_barcode_sample_key_sheet_PDX.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-GIST-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi


