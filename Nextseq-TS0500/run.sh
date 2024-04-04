# get sample sheet from all run file
cat genome_files/nextseq_ts0500runs_all.txt | awk '{print $1,$2}' | sort -u | awk '{print "nextseq31\t"$1"\t"$2}' > genome_files/nextseq-ts0500-samplesheet.txt
cat genome_files/nextseq_ts0500runs_all.txt | awk '{print $1,$2}' | sort -u | awk '{print "nextseqts0500backup\t"$1"\t"$2}' > genome_files/nextseq-ts0500-samplesheet.txt

# rerun all old runs
for x in ./run-files/Nextseq-TS0500/*_*_*.sh; do echo $x; bash $x;done

# get all old run names
grep "run=" *.sh | cut -d= -f2,2 | sort -u

