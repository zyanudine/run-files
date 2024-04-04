# TS50 ROS1 panel run 945-171, remove sample check now
# ls /mnt/TS32/analysis/output/Home/ -ltrh
# pico /mnt/win-hp/next_gene_seq_wind/share/public/ROS1_AmpliSeq_run_barcode_sample_key_sheet.txt
# codes/utils/get_bar.sh Auto_user_945-171-ROS1_training_for_WeiHua_245_217 ROS1_AmpliSeq_run_barcode_sample_key_sheet.txt
---------
#varscan
---
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=ROS1_TS5.0
project=Auto_user_945-171-ROS1_training_for_WeiHua_245_217
samples=all
ext=null
reffai=hg19.fasta
roi=ROS1_Pfizer_3pool_ROI_TS_v1.bed
bar2samplefile=ROS1_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS32

nohup bash ./codes/Ion-general-varscan-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-TS5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup


#TS5.0
--

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_out+coverageAnalysis_out
cpdir=ROS1_TS5.0
project=Auto_user_945-171-ROS1_training_for_WeiHua_245_217
samples=all
roi=ROS1_Pfizer_3pool_ROI_TS_v1.bed
control=null
seqserver=TS32
bar2samplefile=ROS1_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-ROS1-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $control $seqserver $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup


# cp TS5.0 vc plugin bam
dtype=plugin_vc_bam
plgin=variantCaller_out
cpdir1=/mnt/win-hp/next_gene_seq_wind/public_large/ROS1-Pfizer/
nohup bash ./codes/Ion-data-tran-TS5.0-new.sh $dtype $project $plgin $seqserver $cpdir $cpdir1 2>&1 | nohup tee -a tmp/$project.nohup

