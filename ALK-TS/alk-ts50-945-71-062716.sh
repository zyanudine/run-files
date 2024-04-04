# TS32 945-71, remove sample check now
# ls /mnt/TS32/analysis/output/Home/ -ltrh
# pico /mnt/win-hp/next_gene_seq_wind/share/public/ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
# codes/utils/get_bar.sh Auto_user_945-71-ALK_NGS_Hi-Q_view_validation_FFPE_6_7_8_9_10_MMD_174_187_137_081 ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
---------
#varscan
---
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-71-ALK_NGS_Hi-Q_view_validation_FFPE_6_7_8_9_10_MMD_174_187_137_081
samples="IonXpress_009\|IonXpress_010\|IonXpress_013\|IonXpress_041\|IonXpress_042\|IonXpress_043\|IonXpress_044\|IonXpress_045\|IonXpress_095\|IonXpress_003\|IonXpress_004\|IonXpress_007\|IonXpress_008"
ext=null
reffai=hg19.fasta
roi=ALK_final_ROIe20_28Pool1.bed
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS32

nohup bash ./codes/Ion-general-varscan-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup


cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-71-ALK_NGS_Hi-Q_view_validation_FFPE_6_7_8_9_10_MMD_174_187_137_081
samples="IonXpress_055\|IonXpress_056\|IonXpress_057\|IonXpress_058\|IonXpress_059\|IonXpress_078\|IonXpress_079\|IonXpress_080\|IonXpress_081\|IonXpress_082\|IonXpress_096"
ext=null
reffai=hg19.fasta
roi=ALK_final_ROIe20_28Pool2.bed
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS32

nohup bash ./codes/Ion-general-varscan-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup


#TS5.0
--

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp1_out+coverageAnalysis_cp1_out
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-71-ALK_NGS_Hi-Q_view_validation_FFPE_6_7_8_9_10_MMD_174_187_137_081
samples="IonXpress_009\|IonXpress_010\|IonXpress_013\|IonXpress_041\|IonXpress_042\|IonXpress_043\|IonXpress_044\|IonXpress_045\|IonXpress_095\|IonXpress_003\|IonXpress_004\|IonXpress_007\|IonXpress_008"
roi=ALK_final_ROIe20_28Pool1.bed
control=null
seqserver=TS32

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp2_out+coverageAnalysis_cp2_out
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-71-ALK_NGS_Hi-Q_view_validation_FFPE_6_7_8_9_10_MMD_174_187_137_081
samples="IonXpress_055\|IonXpress_056\|IonXpress_057\|IonXpress_058\|IonXpress_059\|IonXpress_078\|IonXpress_079\|IonXpress_080\|IonXpress_081\|IonXpress_082\|IonXpress_096"
roi=ALK_final_ROIe20_28Pool2.bed
control=null
seqserver=TS32

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup




