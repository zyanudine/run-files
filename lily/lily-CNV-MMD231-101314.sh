#MMD-231
--------
#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Lilly_CNV
project=Auto_user_MMD-231-AmpSeqv2_LungPlasma_WL_25Sep2014_233_325
samples="IonXpress_011\|IonXpress_012\|IonXpress_013\|IonXpress_014\|IonXpress_015\|IonXpress_016\|IonXpress_017"
ext=null
reffai=hg19.fasta
roi=CHP2.20131001.designed.oncocnv.filter.bed
bar2samplefile=Lilly_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS

nohup bash ./codes/Ion-general-CNV-ONCOCNV-TS4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup

