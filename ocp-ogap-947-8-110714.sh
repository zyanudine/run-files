#TS30 947-8
--------
#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=OCP_ogap
project=Auto_user_947-8-AcroMetrix_Fusion_ctrl_R3_WL_42_011
samples="IonXpress_002"
ext=null
reffai=hg19.fasta
roi=OCP3.20140718.designed.bed
bar2samplefile=OCP_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS30

nohup bash ./codes/Ion-general-varscan-ogap-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-ogap-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
