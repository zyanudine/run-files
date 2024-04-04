#MMD-224
--------
#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Lilly_CNV
project=Auto_user_MMD-224-AmpliSeqv2_TruQ5_6_7_1to10ngDNA_WL_12Aug2014_226_318
samples="IonXpress_003\|IonXpress_004\|IonXpress_006"
ext=null
reffai=hg19.fasta
roi=CHP2.20131001.designed.oncocnv.filter.bed
bar2samplefile=Lilly_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS

nohup bash ./codes/Ion-general-CNV-ONCOCNV-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup

