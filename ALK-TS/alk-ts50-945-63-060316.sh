# TS32 945-63, remove sample check now
# ls /mnt/TS32/analysis/output/Home/ -ltrh
# pico /mnt/win-hp/next_gene_seq_wind/share/public/ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
# codes/utils/get_bar.sh Auto_user_945-62-ALK_NGS_HiQ_view_validation_gb_dilution_set_1_127_069 ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
---------
#varscan
---
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-63-ALK_NGS_HiQ_view_validation_gb1_gb3_dilutions_128_071
samples="IonXpress_014\|IonXpress_015\|IonXpress_016\|IonXpress_017\|IonXpress_018\|IonXpress_019\|IonXpress_020\|IonXpress_021\|IonXpress_022\|IonXpress_023\|IonXpress_024\|IonXpress_025\|IonXpress_026"
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
project=Auto_user_945-63-ALK_NGS_HiQ_view_validation_gb1_gb3_dilutions_128_071
samples="IonXpress_027\|IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032\|IonXpress_065\|IonXpress_066\|IonXpress_067\|IonXpress_068\|IonXpress_069\|IonXpress_070\|IonXpress_071"
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
project=Auto_user_945-63-ALK_NGS_HiQ_view_validation_gb1_gb3_dilutions_128_071
samples="IonXpress_014\|IonXpress_015\|IonXpress_016\|IonXpress_017\|IonXpress_018\|IonXpress_019\|IonXpress_020\|IonXpress_021\|IonXpress_022\|IonXpress_023\|IonXpress_024\|IonXpress_025\|IonXpress_026"
roi=ALK_final_ROIe20_28Pool1.bed
control=null
seqserver=TS32

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp2_out+coverageAnalysis_cp2_out
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-63-ALK_NGS_HiQ_view_validation_gb1_gb3_dilutions_128_071
samples="IonXpress_027\|IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032\|IonXpress_065\|IonXpress_066\|IonXpress_067\|IonXpress_068\|IonXpress_069\|IonXpress_070\|IonXpress_071"
roi=ALK_final_ROIe20_28Pool2.bed
control=null
seqserver=TS32

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup




