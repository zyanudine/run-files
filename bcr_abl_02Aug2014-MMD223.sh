# MMD223
-----------------------
cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL
project=Auto_user_MMD-223-Ariad_BCL-ABL_400bp_225_317
samples=all
roi=null
igvvcf=null
nohup bash ./codes/Ion-general-BCRABL-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf 2>&1 | nohup tee -a tmp/$project.nohup


