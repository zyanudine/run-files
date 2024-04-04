# MMD262
-----------------------
cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_EGFR
project=Auto_user_MMD-262-Ariad_EGFR_Samples15Apr2015_29_035
samples=all
roi=null
igvvcf=null
nohup bash ./codes/Ion-general-EGFR-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf 2>&1 | nohup tee -a tmp/$project.nohup


