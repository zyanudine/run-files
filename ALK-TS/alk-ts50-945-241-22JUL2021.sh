# TS50 945-241, remove sample check now
# ls /mnt/TS32/analysis/output/Home/ -ltrh
# pico /mnt/win-hp/next_gene_seq_wind/share/public/ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
# codes/utils/get_bar.sh Auto_user_945-241-Pfizer_B7471006_ALKB_18Jul2021_lib_319_312 ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
---------
#varscan
---
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-241-Pfizer_B7471006_ALKB_18Jul2021_lib_319_312
samples="IonXpress_009\|IonXpress_010\|IonXpress_011\|IonXpress_012\|IonXpress_013\|IonXpress_014\|IonXpress_015\|IonXpress_016\|IonXpress_033\|IonXpress_034\|IonXpress_035\|IonXpress_036\|IonXpress_037\|IonXpress_038\|IonXpress_039\|IonXpress_040\|IonXpress_041\|IonXpress_042\|IonXpress_043\|IonXpress_044"
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
project=Auto_user_945-241-Pfizer_B7471006_ALKB_18Jul2021_lib_319_312
samples="IonXpress_045\|IonXpress_046\|IonXpress_047\|IonXpress_048\|IonXpress_049\|IonXpress_050\|IonXpress_051\|IonXpress_052\|IonXpress_053\|IonXpress_054\|IonXpress_055\|IonXpress_056\|IonXpress_057\|IonXpress_058\|IonXpress_059\|IonXpress_060\|IonXpress_061\|IonXpress_062\|IonXpress_063\|IonXpress_064"
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
project=Auto_user_945-241-Pfizer_B7471006_ALKB_18Jul2021_lib_319_312
samples="IonXpress_009\|IonXpress_010\|IonXpress_011\|IonXpress_012\|IonXpress_013\|IonXpress_014\|IonXpress_015\|IonXpress_016\|IonXpress_033\|IonXpress_034\|IonXpress_035\|IonXpress_036\|IonXpress_037\|IonXpress_038\|IonXpress_039\|IonXpress_040\|IonXpress_041\|IonXpress_042\|IonXpress_043\|IonXpress_044"
roi=ALK_final_ROIe20_28Pool1.bed
control=null
seqserver=TS32

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup



cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp2_out+coverageAnalysis_cp2_out
cpdir=Pfizer_ALK_TS5.0
project=Auto_user_945-241-Pfizer_B7471006_ALKB_18Jul2021_lib_319_312
samples="IonXpress_045\|IonXpress_046\|IonXpress_047\|IonXpress_048\|IonXpress_049\|IonXpress_050\|IonXpress_051\|IonXpress_052\|IonXpress_053\|IonXpress_054\|IonXpress_055\|IonXpress_056\|IonXpress_057\|IonXpress_058\|IonXpress_059\|IonXpress_060\|IonXpress_061\|IonXpress_062\|IonXpress_063\|IonXpress_064"
roi=ALK_final_ROIe20_28Pool2.bed
control=null
seqserver=TS32

nohup bash ./codes/Ion-general-ALK-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver 2>&1 | nohup tee -a tmp/$project.nohup




