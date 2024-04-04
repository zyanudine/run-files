# TS32 945-97, remove sample check now
# ls /mnt/TS32/analysis/output/Home/ -ltrh
# pico /mnt/win-hp/next_gene_seq_wind/share/public/ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
# codes/utils/get_bar.sh Auto_user_945-97-ALK_NGS_phase_II_libs_21Dec2016_WL_164_108 ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
---------
#varscan
---
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-97-ALK_NGS_phase_II_libs_21Dec2016_WL_164_108
samples="IonXpress_001\|IonXpress_002\|IonXpress_003\|IonXpress_004\|IonXpress_005\|IonXpress_006\|IonXpress_007\|IonXpress_008\|IonXpress_009\|IonXpress_010\|IonXpress_011\|IonXpress_012\|IonXpress_013\|IonXpress_014\|IonXpress_015\|IonXpress_016\|IonXpress_033\|IonXpress_034\|IonXpress_035\|IonXpress_036\|IonXpress_037\|IonXpress_038\|IonXpress_039\|IonXpress_040"
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
project=Auto_user_945-97-ALK_NGS_phase_II_libs_21Dec2016_WL_164_108
samples="IonXpress_017\|IonXpress_018\|IonXpress_019\|IonXpress_020\|IonXpress_021\|IonXpress_022\|IonXpress_023\|IonXpress_024\|IonXpress_025\|IonXpress_026\|IonXpress_027\|IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032\|IonXpress_041\|IonXpress_042\|IonXpress_043\|IonXpress_044\|IonXpress_045\|IonXpress_046\|IonXpress_047\|IonXpress_048"
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
project=Auto_user_945-97-ALK_NGS_phase_II_libs_21Dec2016_WL_164_108
samples="IonXpress_001\|IonXpress_002\|IonXpress_003\|IonXpress_004\|IonXpress_005\|IonXpress_006\|IonXpress_007\|IonXpress_008\|IonXpress_009\|IonXpress_010\|IonXpress_011\|IonXpress_012\|IonXpress_013\|IonXpress_014\|IonXpress_015\|IonXpress_016\|IonXpress_033\|IonXpress_034\|IonXpress_035\|IonXpress_036\|IonXpress_037\|IonXpress_038\|IonXpress_039\|IonXpress_040"
roi=ALK_final_ROIe20_28Pool1.bed
control=null
seqserver=TS32

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp2_out+coverageAnalysis_cp2_out
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-97-ALK_NGS_phase_II_libs_21Dec2016_WL_164_108
samples="IonXpress_017\|IonXpress_018\|IonXpress_019\|IonXpress_020\|IonXpress_021\|IonXpress_022\|IonXpress_023\|IonXpress_024\|IonXpress_025\|IonXpress_026\|IonXpress_027\|IonXpress_028\|IonXpress_029\|IonXpress_030\|IonXpress_031\|IonXpress_032\|IonXpress_041\|IonXpress_042\|IonXpress_043\|IonXpress_044\|IonXpress_045\|IonXpress_046\|IonXpress_047\|IonXpress_048"
roi=ALK_final_ROIe20_28Pool2.bed
control=null
seqserver=TS32

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup




