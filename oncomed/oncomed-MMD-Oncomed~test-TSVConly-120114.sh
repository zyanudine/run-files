# vc TSVC4.2.1
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=ONCOMED_AmpliSeq_test
project=Auto_user_MMD-Oncomed~test-Ampliseq_panel
samples=all
ext=null
reffai=hg19.fasta
roi=ONCOMED_IAD42642_23_Designed.bed
bar2samplefile=ONCOMED_AmpliSeq_run_barcode_sample_key_sheet.txt
#hspt=ALK_panel.ALK_final_ROIe20_28Pool2.cosmic.v64.hotspot.rmd.bed
#hspt=ONCOMED_Ampliseq.ONCOMED_IAD42642_23_Designed.cosmic.v64.hotspot.rmd.bed
hspt=null
seqserver=TS

nohup bash ./codes/Ion-general-vc-TSVC4.2.1.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $hspt 2>&1 | nohup tee -a tmp/$project.nohup


