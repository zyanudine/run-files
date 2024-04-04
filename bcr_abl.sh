# MMD204
-----------------------
cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL
project=Auto_user_MMD-204-BCR_ABL_TargetSeq_400bp_314Chip_20140312_206_291
samples=all
roi=null
igvvcf=null
nohup bash ./codes/Ion-general-BCRABL-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf 2>&1 | nohup tee -a tmp/$project.nohup


