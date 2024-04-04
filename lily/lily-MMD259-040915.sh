#MMD-259
--------
#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Lilly_Ampliseq
project=Auto_user_MMD-259-AmpSeqv2_CRCplasmaChip1_WL_8Apr2015_26_032
samples=all
ext=null
reffai=hg19.fasta
roi=CHP2.20131001.designed.bed
bar2samplefile=Lilly_AmpliSeq_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-varscan-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup


#ts3.4
--

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_cp1_out+coverageAnalysis_out
cpdir=Lilly_Ampliseq
project=Auto_user_MMD-259-AmpSeqv2_CRCplasmaChip1_WL_8Apr2015_26_032
samples=all
roi=CHP2.20131001.designed.bed
control=null
nohup bash ./codes/Ion-general-LILY-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup




