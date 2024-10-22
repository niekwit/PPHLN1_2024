# Combine replicate peaks for MPP8 and TASOR
cat wysocka_2018/results/macs2_broad/mapped_q0/fdr0.1/MPP8_1/MPP8_1_vs_Input_1_peaks.broadPeak wysocka_2018/results/macs2_broad/mapped_q0/fdr0.1/MPP8_2/MPP8_2_vs_Input_2_peaks.broadPeak | sort -k1,1 -k2,2n > chip-seq/MPP8_tmp.bed
bedtools merge -i chip-seq/MPP8_tmp.bed > chip-seq/MPP8.bed
rm chip-seq/MPP8_tmp.bed

cat wysocka_2018/results/macs2_broad/mapped_q0/fdr0.1/TASOR_1/TASOR_1_vs_Input_1_peaks.broadPeak wysocka_2018/results/macs2_broad/mapped_q0/fdr0.1/TASOR_2/TASOR_2_vs_Input_2_peaks.broadPeak | sort -k1,1 -k2,2n > chip-seq/TASOR_tmp.bed
bedtools merge -i chip-seq/TASOR_tmp.bed > chip-seq/TASOR.bed
rm chip-seq/TASOR_tmp.bed