# 5/2/16 new bcr-abl runs
# see run-sh-3.sh and run-sh-bcr-abl-PDX.sh (run-sh-5.sh on PDX 16.24)

ls /mnt/TS/analysis/output/Home/ -ltr
pico /mnt/win-hp/next_gene_seq_wind/share/public/ABL1_400_run_barcode_sample_key_sheet.txt
cp -pr /mnt/GA-880GM/codes/run-sh-bcr-abl.sh ./codes/   # to 90.6, run on 90.6

#BCR_ABL
--------------------------------------------------------
#MMD-291
---------
#TS3.4
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL
project=Auto_user_949-74-ARIA_PACE_400bp_09AUG2016PF_119_098-RE3_101
samples=all
roi=null
igvvcf=null
nohup bash ./codes/Ion-general-BCRABL-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"


#MMD-292
---------
#TS3.4
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL
project=Auto_user_MMD-292-Novartis_X2101_ABL1_1to22_61to73_repeat_samples_73_094
samples=all
roi=null
igvvcf=null
nohup bash ./codes/Ion-general-BCRABL-TS3.4.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"


# 8/8/16 bcr-abl and phasing with TS5.0 new pipeline
-----------------------------------------------------------------------------------------------------------------------------------------
#BCR_ABL
--------------------------------------------------------
#949-74
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_949-74-ARIA_PACE_400bp_09AUG2016PF_119_098-RE3_101
samples=all
roi=null
igvvcf=null
seqserver=TS31
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"

#TS5.0 with added igv call
---

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_949-74-ARIA_PACE_400bp_09AUG2016PF_119_098-RE3_101
samples=all
roi=null
igvvcf=2016_Ariad_phasing_extra_var_igv-call-vcf.vcf
seqserver=TS31
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"


#BCR_ABL phasing
------------------------------------------------------------

#949-74 (after add igv vcf)
---------
#TS5.0
--

cdl
dtype=plugin_vc+plugin_cv+bam_bai
plgin=variantCaller_out+coverageAnalysis_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_949-74-ARIA_PACE_400bp_09AUG2016PF_119_098-RE3_101
samples=all
roi=null
reffai=mrna_bcr_abl/RefmRNA_BCR_ABL1.fasta
bar2samplefile=ABL1_400bp_barcode_sample_key_sheet.txt
#selectphasefile=Araid_2016_phasing_selectphasefile_MixControl_tab.xls
selectphasefile=Araid_2016_phasing_selectphasefile_all_samples_tab.xls
seqserver=TS31
nohup bash ./codes/Ion-general-BCRABL-phasing-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $reffai $bar2samplefile $selectphasefile $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"



#BCR_ABL
--------------------------------------------------------
#945-114
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-114-Novartis_CABLX2101_NGS_sample_49_101_186_148
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"

#945-115
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-115-Novartis_CABLX2101_NGS_sample_1_48_187_149
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"

#945-116
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-116-NVS_CABL001X2101_ABL_RT_PCR_repeat_188_150
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"

#945-119
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-119-NVS_CABL001X2101_ABL1_3rdRT_PCR_repeat_191_153
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"

#945-137
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-137-NVS_Sep2017_batch1_run1_208_172
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"

#945-138
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-138-NVS_Sep2017_batch1_run2_209_173
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"


#945-139
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-139-NVS_Sep2017_batch2_run1_210_174
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"



#945-140
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-140-NVS_Sep2017_batch2_run2_211_175
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"

#945-142
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-142-NVS_Sep2017_batch3_run1_213_177
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"


#945-143
---------
#TS5.0
--

cdl
dtype=plugin_vc
plgin=variantCaller_out
cpdir=Ion_Targetseq_BCR_ABL_TS50
project=Auto_user_945-143-NVS_Sep2017_batch3_run2_214_178
samples=all
roi=null
igvvcf=null
seqserver=TS32
nohup bash ./codes/Ion-general-BCRABL-TS5.0.sh $dtype $plgin $cpdir $project $samples $roi $igvvcf $seqserver &
watch -n 2 "tail -20  Ion-TS-vc-results/$project/plugin_out/log"


