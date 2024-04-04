#delete host bam and fastq files in seqs/$run/*   to save sapce due to big data size
# need to rerun if need the files again
# need to use network storae if more runs needed
ls seqs/*/Alignment_TSO500_bwamem_XenofilteR/*/*/*fastq.gz -ltrh
ls seqs/*/Alignment_TSO500_bwamem_host/ -ltrh
ls seqs/*/Alignment_TSO500_bwamem_XenofilteR/*/* -ltrh
du -smhc seqs/*/Alignment_TSO500_bwamem_XenofilteR/*/*/*fastq.gz
rm -fr seqs/*/Alignment_TSO500_bwamem_XenofilteR/*/*/*fastq.gz
du -smhc seqs/*/Alignment_TSO500_bwamem_XenofilteR/*/*
du -smhc seqs/*/Alignment_TSO500_bwamem_host
rm -fr seqs/*/Alignment_TSO500_bwamem_host/*
rm -fr seqs/*/Alignment_TSO500_bwamem_XenofilteR/*/*

