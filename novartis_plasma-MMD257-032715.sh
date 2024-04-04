#MMD-257
# allele counts modfied from varscan pipeline
--------
#varscan (allele cout in varscan folder)
--
cdl
dtype=bam_bai
plgin=variantCaller   # does not matter
cpdir=Novartis_plasma
project=Auto_user_MMD-257-AmpSeqv2_NovartisContrived_PostLibPCR_PL_24Mar2015_22_026
samples=all
ext=null
reffai=hg19.fasta
roi=NovartisContrivedPlasma_hotspot.bed
bar2samplefile=NovartisContrivedPlasma_run_barcode_sample_key_sheet.txt

nohup bash ./codes/Ion-general-Novaris_plasma-TS3.4.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile 2>&1 | nohup tee -a tmp/$project.nohup

