# MMD-189
---------
#varscan
---
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_ML350P
project=Auto_user_MMD-189-ALK_NGS_validation_CellLine_WHL_10Dec2013_191_276
samples="IonXpress_007\|IonXpress_008\|IonXpress_009\|IonXpress_010\|IonXpress_011\|IonXpress_012\|IonXpress_013\|IonXpress_014\|IonXpress_015\|IonXpress_016\|IonXpress_021"
ext=null
reffai=hg19.fasta
roi=ALK_final_ROIe20_28Pool1.bed
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup


cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_ML350P
project=Auto_user_MMD-189-ALK_NGS_validation_CellLine_WHL_10Dec2013_191_276
samples="IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032\|IonXpress_033\|IonXpress_034\|IonXpress_035\|IonXpress_036\|IonXpress_037\|IonXpress_042"
ext=null
reffai=hg19.fasta
roi=ALK_final_ROIe20_28Pool2.bed
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup


#ts3.4
--

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp1_out+coverageAnalysis_cp1_out
cpdir=Pfizer_ALK_ML350P
project=Auto_user_MMD-189-ALK_NGS_validation_CellLine_WHL_10Dec2013_191_276
samples="IonXpress_007\|IonXpress_008\|IonXpress_009\|IonXpress_010\|IonXpress_011\|IonXpress_012\|IonXpress_013\|IonXpress_014\|IonXpress_015\|IonXpress_016\|IonXpress_021"
roi=ALK_final_ROIe20_28Pool1.bed
control=null
 pl=pool1
 plg=cp1
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-ALK-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi



cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp2_out+coverageAnalysis_cp2_out
cpdir=Pfizer_ALK_ML350P
project=Auto_user_MMD-189-ALK_NGS_validation_CellLine_WHL_10Dec2013_191_276
samples="IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032\|IonXpress_033\|IonXpress_034\|IonXpress_035\|IonXpress_036\|IonXpress_037\|IonXpress_042"
roi=ALK_final_ROIe20_28Pool2.bed
control=null
 pl=pool2
 plg=cp2
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-ALK-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi




