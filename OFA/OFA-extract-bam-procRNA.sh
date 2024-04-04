# extract bam/fastq files from IR server for OFA projects

dtype="ir5.0-bam-copy-procRNA"  # null
project="Etg"  # null
plgin=all  # null
seqserver=IR34  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=OFA_extract_IR_bam  # share folder dir
sharedir=/media/zyan/MMD_2

#nohup bash ./codes/Ion-data-tran-IR5.0.sh $dtype $project $plgin $seqserver $cpdir 2>&1 | nohup tee -a tmp/ofa-extract-bam-MRK.nohup
nohup bash ./codes/Ion-data-tran-IR5.0-new.sh $dtype $project $plgin $seqserver $cpdir $sharedir 2>&1 | nohup tee -a tmp/ofa-extract-bam-MRK.nohup

dtype="ir5.0-bam-copy-procRNA"  # null
project="Rln"  # null
plgin=all  # null
seqserver=IR34  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=OFA_extract_IR_bam  # share folder dir
sharedir=/media/zyan/MMD_2

#nohup bash ./codes/Ion-data-tran-IR5.0.sh $dtype $project $plgin $seqserver $cpdir 2>&1 | nohup tee -a tmp/ofa-extract-bam-MRK.nohup
nohup bash ./codes/Ion-data-tran-IR5.0-new.sh $dtype $project $plgin $seqserver $cpdir $sharedir 2>&1 | nohup tee -a tmp/ofa-extract-bam-MRK.nohup

dtype="ir5.0-bam-copy-procRNA"  # null
project="LOX2017"  # null
plgin=all  # null
seqserver=IR34  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=OFA_extract_IR_bam  # share folder dir
sharedir=/media/zyan/MMD_2

#nohup bash ./codes/Ion-data-tran-IR5.0.sh $dtype $project $plgin $seqserver $cpdir 2>&1 | nohup tee -a tmp/ofa-extract-bam-MRK.nohup
nohup bash ./codes/Ion-data-tran-IR5.0-new.sh $dtype $project $plgin $seqserver $cpdir $sharedir 2>&1 | nohup tee -a tmp/ofa-extract-bam-MRK.nohup

