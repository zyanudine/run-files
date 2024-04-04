# cp from lily-regeneron-MMD263-081115.sh, runfile for multiple projects, runs with control NA12878 and other runs, total 14 runs
# MMD-233, 259 use cp1 vc
# MMD-242, 247 has two seqs data foler: 
#Auto_user_MMD-242-AmpSeqv2_TaiWanACTG_WL_14Jan2015_7_009 Auto_user_MMD-242cp-AmpSeqv2_TaiWanACTG_WL_14Jan2015_7_009    # 2nd one is link to first one, for oncomed-forlily-MMD242cp-011515.sh
#Auto_user_MMD-247-AmpSeqv2_IndvmdCRC1_WL_9Mar20$ Auto_user_MMD-247-AmpSeqv2_IndvmdCRC1_WL_9Mar2015_12_014,  # 1st one is failed one
# so use full name for these two runs

#MMD-224 MMD-231 MMD-232 MMD-236 MMD-237 MMD-242 MMD-247 MMD-252 MMD-264
for x in MMD-224 MMD-231 MMD-232 MMD-236 MMD-237 MMD-242-AmpSeqv2 MMD-247-AmpSeqv2_IndvmdCRC1_WL_9Mar2015_12_014 MMD-252 MMD-264 MMD-260 MMD-261 MMD-263; do 
y=`ls seqs/ | grep $x`; echo $y;

#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Lilly_Ampliseq
project=$y
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
project=$y
samples=all
roi=CHP2.20131001.designed.bed
control=null
nohup bash ./codes/Ion-general-LILY-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup

done 

# MMD-233, MMD-259, use cp1 vc
for x in MMD-233 MMD-259; do
y=`ls seqs/ | grep $x`; echo $y;

#varscan
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Lilly_Ampliseq
project=$y
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
plgin=variantCaller_cp1_out+coverageAnalysis_out
cpdir=Lilly_Ampliseq
project=$y
samples=all
roi=CHP2.20131001.designed.bed
control=null
nohup bash ./codes/Ion-general-LILY-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $control 2>&1 | nohup tee -a tmp/$project.nohup

done

