# inplace perl replace
perl -i.bak -pe 's/171122_M00662_0206_000000000-BHD43/171211_M00662_0212_000000000-BJRVT/g' *0212-121317.sh
perl -i.bak -pe 's/171211_M00662_0212_000000000-BJRVT/171215_M00662_0214_000000000-BJNCY/g' *0214-121817.sh
perl -i.bak -pe 's/171211_M00662_0212_000000000-BJRVT/171218_M00662_0215_000000000-BJWBC/g' *0215-122017.sh

# modify ALK codes to win-hp1
sed -i.bak 's/\/mnt\/win-hp/\/mnt\/win-hp1/g'  ./codes/Ion-varscan-TS5.0.sh
sed -i.bak 's/\/mnt\/win-hp/\/mnt\/win-hp1/g' ./codes/Ion-cp-2-win-hp-varscan-TS5.0.sh
sed -i.bak 's/\/mnt\/win-hp/\/mnt\/win-hp1/g'  ./codes/Ion-varscan-mpileup2indel-TS5.0.sh
sed -i.bak 's/\/mnt\/win-hp/\/mnt\/win-hp1/g'  ./codes/Ion-Auto_MMD-Ampliseq-ALK-TS5.0.sh
sed -i.bak 's/\/mnt\/win-hp/\/mnt\/win-hp1/g'  ./codes/Ion-cp-2-win-hp-ALK-TS5.0.sh
grep "/mnt/win-hp"  ./codes/Ion-cp-2-win-hp-ALK-TS5.0.sh
#remove new run from copied sample sheet
sed -i.bak '/945-207/d' genome_files/ALK_AmpliSeq_run_barcode_sample_key_sheet.txt
