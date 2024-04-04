# for KIT targetseq CDS seq, copy from  codes/run-sh-3.sh
# ls /mnt/TS/analysis/output/Home/ -ltrh

#Ariad KIT CDS seq
-------------------------------------------------------------
#MMD-293
---------
#TS3.4

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp1_out+coverageAnalysis_cp1_out
cpdir=Ion_Targetseq_KIT
project=Auto_user_MMD-293-Ariad_Kit_PF_74_095
samples=all
roi=null
reffai=Ariad_Kit.fasta
bar2samplefile=AmpliSeq_run_barcode_sample_key_sheet.txt
nohup bash ./codes/Ion-general-KIT-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $reffai $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup

