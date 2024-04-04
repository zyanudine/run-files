#MMD-159 pool 1,2,3
--------
#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Oncomed_NOTCH_ogap
project=Auto_user_MMD-159-Notch_Primer_Test6_161_245
samples="IonXpress_018\|IonXpress_019\|IonXpress_020\|IonXpress_021\|IonXpress_022"
ext=null
reffai=hg19.fasta
roi=Notch_Pool1_ROI_v2.bed
bar2samplefile=Notch_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-ogap-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-ogap-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Oncomed_NOTCH_ogap 
project=Auto_user_MMD-159-Notch_Primer_Test6_161_245
samples="IonXpress_023\|IonXpress_024\|IonXpress_025\|IonXpress_026\|IonXpress_027"
ext=null
reffai=hg19.fasta
roi=Notch_Pool2_ROI_v2.bed
bar2samplefile=Notch_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-ogap-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-ogap-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Oncomed_NOTCH_ogap 
project=Auto_user_MMD-159-Notch_Primer_Test6_161_245
samples="IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032"
ext=null
reffai=hg19.fasta
roi=Notch_Pool3_ROI_v3.bed
bar2samplefile=Notch_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-ogap-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-ogap-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup




#ts3.4
--
cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp1_out+coverageAnalysis_cp1_out
cpdir=Oncomed_NOTCH_ogap
project=Auto_user_MMD-159-Notch_Primer_Test6_161_245
samples="IonXpress_018\|IonXpress_019\|IonXpress_020\|IonXpress_021\|IonXpress_022"
roi=Notch_Pool1_ROI_v2.bed
control=null
 pl=pool1
 plg=cp1
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/Notch_AmpliSeq_run_barcode_sample_key_sheet.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-NOTCH-ogap-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi




cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp2_out+coverageAnalysis_cp2_out
cpdir=Oncomed_NOTCH_ogap 
project=Auto_user_MMD-159-Notch_Primer_Test6_161_245
samples="IonXpress_023\|IonXpress_024\|IonXpress_025\|IonXpress_026\|IonXpress_027"
roi=Notch_Pool2_ROI_v2.bed
control=null
 pl=pool2
 plg=cp2
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/Notch_AmpliSeq_run_barcode_sample_key_sheet.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-NOTCH-ogap-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi




cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp3_out+coverageAnalysis_cp3_out
cpdir=Oncomed_NOTCH_ogap
project=Auto_user_MMD-159-Notch_Primer_Test6_161_245
samples="IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032"
roi=Notch_Pool3_ROI_v3.bed
control=null
 pl=pool3
 plg=cp3
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/Notch_AmpliSeq_run_barcode_sample_key_sheet.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-NOTCH-ogap-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi


