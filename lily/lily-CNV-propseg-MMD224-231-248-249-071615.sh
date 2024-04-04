#MMD-224, 231, 247, 248, total 4 NA12878 controls, 2 from 224, 1 from 231, 1 from 247, also in run-files/lily-CNV-MMD224-231-248-249-071615.sh
--------
#propseg
--
for x in Auto_user_MMD-224-AmpliSeqv2_TruQ5_6_7_1to10ngDNA_WL_12Aug2014_226_318 Auto_user_MMD-231-AmpSeqv2_LungPlasma_WL_25Sep2014_233_325 Auto_user_MMD-247-AmpSeqv2_IndvmdCRC1_WL_9Mar2015_12_014 Auto_user_MMD-248-AmpSeqv2_IndvmdCRC2_WL_9Mar2015_13_015
do
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Lilly_CNV
#project=Auto_user_MMD-247-AmpSeqv2_IndvmdCRC1_WL_9Mar2015_12_014
project=$x
samples=all
ext=null
reffai=hg19.fasta
roi=CHP2.20131001.designed.bed
bar2samplefile=Lilly_AmpliSeq_run_barcode_sample_key_sheet.txt
seqserver=TS
controls="NA12878"
control_folder_name=lily_test

nohup bash ./codes/Ion-general-CNV-propseg.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver $controls $control_folder_name 2>&1 | \
nohup tee -a tmp/$project.nohup &

done


