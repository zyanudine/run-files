# MMD295
-----------------------
cdl
dtype=plugin_vc
plgin=variantCaller_cp1_out
cpdir=Ion_Targetseq_EGFR
project=Auto_user_MMD-295-Ariad_EGFR__PF_R1_76_re1_100
samples=all
roi=null
igvvcf=null
nohup bash ./codes/Ion-general-EGFR-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf 2>&1 | nohup tee -a tmp/$project.nohup


