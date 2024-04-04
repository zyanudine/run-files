# for KIT targetseq CDS seq, copy from  codes/run-sh-3.sh
# ls /mnt/TS/analysis/output/Home/ -ltrh
# TS5.0 now

#Ariad KIT CDS seq
-------------------------------------------------------------
#TS32 945-93
---------
#TS5.0

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_out+coverageAnalysis_out
cpdir=Ion_Targetseq_KIT_TS50
project=Auto_user_945-93-Ariad_Kit_16Seo2016_Samples_160_104
samples=all
roi=null
reffai=Ariad_Kit.fasta
bar2samplefile=AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS32
nohup bash ./codes/Ion-general-KIT-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $reffai $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup

