# MMD249
-----------------------
cdl
dtype=plugin_vc
plgin=variantCaller_cp1_out
cpdir=Ion_Targetseq_EGFR
project=Auto_user_MMD-249-Ariad_EGFR_14_re2_019
samples=all
roi=null
igvvcf=null
nohup bash ./codes/Ion-general-EGFR-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf 2>&1 | nohup tee -a tmp/$project.nohup


