
#MMD-148 pool 1,2,3
--------
#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Oncomed_NOTCH
project=Auto_user_MMD-148-Notch_Pilot5_150_231
samples="IonXpress_017\|IonXpress_018"
ext=null
reffai=hg19.fasta
roi=Notch_Pool1_ROI.bed
bar2samplefile=Notch_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Oncomed_NOTCH 
project=Auto_user_MMD-148-Notch_Pilot5_150_231
samples="IonXpress_024\|IonXpress_025"
ext=null
reffai=hg19.fasta
roi=Notch_Pool2_ROI.bed
bar2samplefile=Notch_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Oncomed_NOTCH 
project=Auto_user_MMD-148-Notch_Pilot5_150_231
samples="IonXpress_031\|IonXpress_032"
ext=null
reffai=hg19.fasta
roi=Notch_Pool3_ROI_v2.bed
bar2samplefile=Notch_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup




#ts3.4
--
cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp1_out+coverageAnalysis_cp1_out
cpdir=Oncomed_NOTCH
project=Auto_user_MMD-148-Notch_Pilot5_150_231
samples="IonXpress_017\|IonXpress_018"
roi=Notch_Pool1_ROI.bed
control="/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/output/Auto_user_MMD-143-Notch_Pilot-1_145_226/Varscan/Auto_user_MMD-143-Notch_Pilot-1_145_226_merge_varscan_report.xls+c+IonXpress_001"
 pl=pool1
 plg=cp1
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/Notch_AmpliSeq_run_barcode_sample_key_sheet.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-NOTCH-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi




cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp2_out+coverageAnalysis_cp2_out
cpdir=Oncomed_NOTCH 
project=Auto_user_MMD-148-Notch_Pilot5_150_231
samples="IonXpress_024\|IonXpress_025"
roi=Notch_Pool2_ROI.bed
control="/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/output/Auto_user_MMD-143-Notch_Pilot-1_145_226/Varscan/Auto_user_MMD-143-Notch_Pilot-1_145_226_merge_varscan_report.xls+c+IonXpress_006"
 pl=pool2
 plg=cp2
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/Notch_AmpliSeq_run_barcode_sample_key_sheet.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-NOTCH-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi




cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp3_out+coverageAnalysis_cp3_out
cpdir=Oncomed_NOTCH
project=Auto_user_MMD-148-Notch_Pilot5_150_231
samples="IonXpress_031\|IonXpress_032"
roi=Notch_Pool3_ROI_v2.bed
control="/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/output/Auto_user_MMD-143-Notch_Pilot-1_145_226/Varscan/Auto_user_MMD-143-Notch_Pilot-1_145_226_merge_varscan_report.xls+c+IonXpress_011"
 pl=pool3
 plg=cp3
 bcf=/mnt/win-hp/next_gene_seq_wind/share/public/Notch_AmpliSeq_run_barcode_sample_key_sheet.txt
 run=`echo $project | sed -e 's/Auto_\|Auto_user_//g' | cut -d'_' -f1,1 | cut -d'-' -f1-2`
 smps=`echo \`grep $run $bcf | grep $pl | grep $plg | awk -F'\t' '{print $2}'\` | sed -e 's/ /\\\|/g'`   # \` in ``
 if [ $smps = $samples ] || [ $samples = "all" ] ; then
nohup bash ./codes/Ion-general-NOTCH-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup
 fi




