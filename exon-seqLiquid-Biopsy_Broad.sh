# see codes/prjts/exon-seqLiquid-Biopsy_Broad.sh
# to get samples: ls seqs/190215_M00000_0001_000000000-BROAD/Alignment_broad_bwa/  | cut -d. -f1,1 | awk '{printf "%s|", $1}'

# 190215_M00000_0001_000000000-BROAD
cdl
dtype=msr_vc+bam_bai  # all, msr_vc,fastq, bam_bai
alg="_broad_bwa"
run=all-but-gatk   # all, varscan, msr
ext=null        #copy folder extension
cptype=all # all, varscan, msr
cpdir=Miseq_ALK_panel
project=190215_M00000_0001_000000000-BROAD    # change project name
roi=null
reffai=human_g1k_v37.fasta  # should work, bam use Homo_sapiens_assembly19.fasta, seems smiliar to glkv37 
df=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/output/${project}/Alignment${alg}

#nohup bash ./codes/Miseq-general-MSR2.2.sh $dtype $project $alg $samples $run $ext $cptype $cpdir $roi $reffai 2>&1 | nohup tee -a tmp/$project.nohup
samples="+(EXO-0000096|EXO-0000114)*"
nohup bash ./codes/Miseq-3-varscan-exonseq.sh $project $alg $samples $roi $reffai 2>&1 | nohup tee -a $df/log &

samples="+(EXO-0000169|EXO-0000172)*"
nohup bash ./codes/Miseq-3-varscan-exonseq.sh $project $alg $samples $roi $reffai 2>&1 | nohup tee -a $df/log &

samples="+(EXO-0000183|EXO-0000358)*"
nohup bash ./codes/Miseq-3-varscan-exonseq.sh $project $alg $samples $roi $reffai 2>&1 | nohup tee -a $df/log &

samples="+(EXO-0001946|EXO-0002805)*"
nohup bash ./codes/Miseq-3-varscan-exonseq.sh $project $alg $samples $roi $reffai 2>&1 | nohup tee -a $df/log &

samples="+(EXO-0003682|EXO-0004750)*"
nohup bash ./codes/Miseq-3-varscan-exonseq.sh $project $alg $samples $roi $reffai 2>&1 | nohup tee -a $df/log &

samples="+(EXO-06336-K)*"
nohup bash ./codes/Miseq-3-varscan-exonseq.sh $project $alg $samples $roi $reffai 2>&1 | nohup tee -a $df/log &



