# 11/5/18 variant call for MRK MET ranseq fusion data, see codes/prjts/mrkmet_rnaseq_fusion_variant_call.sh
# 11/5/18 cp from alk-ts50-945-151-011218.sh

# IR16
for x in `ls /mnt/IR16/IR/data/IR_Org/ion.reporter@lifetech.com/ | grep "^MRK"`; do
echo $x
#proj=MRK18-1041737_v1_MRK18-1041737_RNA_v1
if ! [ -d seqs/IR/$x ]; then
proj=$x
cdl
dtype=ir5.0-RNACountsActor-fusion-bam
plgin=variantCaller   # does not matter, use varscan for IR ranseq
cpdir=MRKMET_rna-vc-IR5.0
project=$proj
samples=all
ext=null
reffai=Oncomine_Focus_designs_062915_Reference.fasta
roi=null
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt  #　not matter
seqserver=IR16

nohup bash ./codes/Ion-general-varscan-IR5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-IR5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
fi
done


# IR16
for x in `ls /mnt/IR16/IR/data/IR_Org/ion.reporter@lifetech.com/ | grep -i "POS"`; do
echo $x
#proj=MRK18-1041737_v1_MRK18-1041737_RNA_v1
if ! [ -d seqs/IR/$x ]; then
proj=$x
cdl
dtype=ir5.0-RNACountsActor-fusion-bam
plgin=variantCaller   # does not matter, use varscan for IR ranseq
cpdir=MRKMET_rna-vc-IR5.0
project=$proj
samples=all
ext=null
reffai=Oncomine_Focus_designs_062915_Reference.fasta
roi=null
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt  #　not matter
seqserver=IR16

nohup bash ./codes/Ion-general-varscan-IR5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-IR5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
fi
done


# IR34
for x in `ls /mnt/IR34/IR/data/IR_Org/ion.reporter@lifetech.com/ | grep "^MRK"`; do
echo $x
#proj=MRK18-1041737_v1_MRK18-1041737_RNA_v1
if ! [ -d seqs/IR/$x ]; then
proj=$x
cdl
dtype=ir5.0-RNACountsActor-fusion-bam
plgin=variantCaller   # does not matter, use varscan for IR ranseq
cpdir=MRKMET_rna-vc-IR5.0
project=$proj
samples=all
ext=null
reffai=Oncomine_Focus_designs_062915_Reference.fasta
roi=null
bar2samplefile=ALK_AmpliSeq_run_barcode_sample_key_sheet.txt  #　not matter
seqserver=IR34

nohup bash ./codes/Ion-general-varscan-IR5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
nohup bash ./codes/Ion-general-varscan-mpileup2indel-IR5.0.sh $dtype $plgin $project $samples $ext $cpdir $reffai $roi $bar2samplefile $seqserver 2>&1 | nohup tee -a tmp/$project.nohup
fi
done

