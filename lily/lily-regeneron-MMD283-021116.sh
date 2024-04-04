#MMD-283,use *varscan-strandallele_etc*
--------
#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Lilly_Ampliseq
project=Auto_user_MMD-283-AmpSeqv2_RegeneronPlasma_WL_10Feb2016_64_085
samples=all
ext=null
reffai=hg19.fasta
roi=CHP2.20131001.designed.bed
bar2samplefile=Lilly_AmpliSeq_run_barcode_sample_key_sheet.txt
strandallele=y  # y or n
hotspot=CHP2.20131001.hotspots.bed

nohup bash ./codes/Ion-general-varscan-strandallele_etc-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $strandallele $hotspot 2>&1 | nohup tee -a tmp/$project.nohup


#ts3.4
--

cdl
dtype=plugin_vc+plugin_cv
plgin=variantCaller_out+coverageAnalysis_out
cpdir=Lilly_Ampliseq
project=Auto_user_MMD-283-AmpSeqv2_RegeneronPlasma_WL_10Feb2016_64_085
samples=all
roi=CHP2.20131001.designed.bed
control=null
nohup bash ./codes/Ion-general-LILY-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup




