# TS30 947-26, remove sample check now
# ls /mnt/TS30/analysis/output/Home/ -ltrh
# pico /mnt/win-hp/next_gene_seq_wind/share/public/ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
# codes/utils/get_bar.sh Auto_user_947-26-Pfizer_ALK_NGS_Val_Repro2_PF_90_047 ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
---------
#varscan
---
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_947-26-Pfizer_ALK_NGS_Val_Repro2_PF_90_047
samples="IonXpress_060\|IonXpress_061\|IonXpress_062\|IonXpress_063\|IonXpress_064\|IonXpress_065\|IonXpress_066\|IonXpress_067\|IonXpress_068\|IonXpress_069\|IonXpress_070\|IonXpress_071"
ext=null
reffai=hg19.fasta
roi=ALK_final_ROIe20_28Pool1.bed
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS30

nohup bash ./codes/Ion-general-varscan-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup


cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_947-26-Pfizer_ALK_NGS_Val_Repro2_PF_90_047
samples="IonXpress_083\|IonXpress_084\|IonXpress_085\|IonXpress_086\|IonXpress_087\|IonXpress_088\|IonXpress_089\|IonXpress_090\|IonXpress_091\|IonXpress_092\|IonXpress_093\|IonXpress_094"
ext=null
reffai=hg19.fasta
roi=ALK_final_ROIe20_28Pool2.bed
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS30

nohup bash ./codes/Ion-general-varscan-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup


#TS5.0
--

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp1_out+coverageAnalysis_cp1_out
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_947-26-Pfizer_ALK_NGS_Val_Repro2_PF_90_047
samples="IonXpress_060\|IonXpress_061\|IonXpress_062\|IonXpress_063\|IonXpress_064\|IonXpress_065\|IonXpress_066\|IonXpress_067\|IonXpress_068\|IonXpress_069\|IonXpress_070\|IonXpress_071"
roi=ALK_final_ROIe20_28Pool1.bed
control=null
seqserver=TS30

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp2_out+coverageAnalysis_cp2_out
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_947-26-Pfizer_ALK_NGS_Val_Repro2_PF_90_047
samples="IonXpress_083\|IonXpress_084\|IonXpress_085\|IonXpress_086\|IonXpress_087\|IonXpress_088\|IonXpress_089\|IonXpress_090\|IonXpress_091\|IonXpress_092\|IonXpress_093\|IonXpress_094"
roi=ALK_final_ROIe20_28Pool2.bed
control=null
seqserver=TS30

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup




