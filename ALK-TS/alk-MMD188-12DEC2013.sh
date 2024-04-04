# MMD-188, Pool1, Pool2
---------
#varscan
---
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_ML350P
project=Auto_user_MMD-188-ALK_NGS_validation_LOD_10Dec2013_190_275
samples="IonXpress_021\|IonXpress_001\|IonXpress_002\|IonXpress_003\|IonXpress_004\|IonXpress_005\|IonXpress_006\|IonXpress_017\|IonXpress_018\|IonXpress_019\|IonXpress_020"
ext=null
reffai=hg19.fasta
roi=ALK_final_ROIe20_28Pool1.bed
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup


cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_ML350P
project=Auto_user_MMD-188-ALK_NGS_validation_LOD_10Dec2013_190_275
samples="IonXpress_042\|IonXpress_022\|IonXpress_023\|IonXpress_024\|IonXpress_025\|IonXpress_026\|IonXpress_027\|IonXpress_038\|IonXpress_039\|IonXpress_040\|IonXpress_041"
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
project=Auto_user_MMD-188-ALK_NGS_validation_LOD_10Dec2013_190_275
samples="IonXpress_021\|IonXpress_001\|IonXpress_002\|IonXpress_003\|IonXpress_004\|IonXpress_005\|IonXpress_006\|IonXpress_017\|IonXpress_018\|IonXpress_019\|IonXpress_020"
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
project=Auto_user_MMD-188-ALK_NGS_validation_LOD_10Dec2013_190_275
samples="IonXpress_042\|IonXpress_022\|IonXpress_023\|IonXpress_024\|IonXpress_025\|IonXpress_026\|IonXpress_027\|IonXpress_038\|IonXpress_039\|IonXpress_040\|IonXpress_041"
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




