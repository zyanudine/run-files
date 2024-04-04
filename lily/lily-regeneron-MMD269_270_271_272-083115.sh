#MMD-269.270,271,272, use *varscan-strandallele_etc*

for x in Auto_user_MMD-269-AmpSeqv2_10HealthyDonorPlasma_WL_24Aug2015_36_047 Auto_user_MMD-270-AmpSeqv2_10HealthyDonorPlasma_WL_25Aug2015_37_048 \
         Auto_user_MMD-271-AmpSeqv2_10HealthyDonorPlasma_WL_27Aug2015_38_049 Auto_user_MMD-272-AmpSeqv2_10HealthyDonorPlasma_WL_28Aug2015_39_050
do

#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Lilly_Ampliseq
project=$x
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
project=$x
samples=all
roi=CHP2.20131001.designed.bed
control=null
nohup bash ./codes/Ion-general-LILY-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup

done
