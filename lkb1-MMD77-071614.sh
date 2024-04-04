# MMD-77

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_out+coverageAnalysis_out
cpdir=LKB1
project=user_MMD-77-STK11_101712_DU145dln_re_311
samples=all
roi=STK11_mergedcoveredregions_062912assay.sort.bed
nohup bash ./codes/Ion-general-LKB-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi 2>&1 | nohup tee -a tmp/$project.nohup

plgin=variantCaller_out+coverageAnalysis_stk11_cds_out
roi=STK11_CDS_100112.sort.bed
nohup bash ./codes/Ion-general-LKB-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi 2>&1 | nohup tee -a tmp/$project.nohup

plgin=variantCaller_out+coverageAnalysis_cp4_out
roi=STK11_indivbase_081312g.sort.bed
nohup bash ./codes/Ion-general-LKB-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi 2>&1 | nohup tee -a tmp/$project.nohup

