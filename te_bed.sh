#!/usr/bin/env bash

mkdir -p bed

# GTF downloaded from https://www.dropbox.com/scl/fo/o0my0l1c7s40un9qv6yvf/AC8F4xbB-V3SGcwzMeJ8vG0?rlkey=sbsb00bbcrq4ofmq1oviy7ws1&e=1&dl=0
# https://labshare.cshl.edu/shares/mhammelllab/www-data/TEtranscripts/TE_GTF/
# https://hammelllab.labsites.cshl.edu/software/

# Convert GTF to BED
gtf2bed GRCh38_Ensembl_rmsk_TE.gtf > bed/GRCh38_Ensembl_rmsk_TE.bed

# Subset for different TE types
grep 'family_id "L1"' bed/GRCh38_Ensembl_rmsk_TE.bed > bed/GRCh38_Ensembl_rmsk_TE_LINE1s.bed
grep 'class_id "LINE"' bed/GRCh38_Ensembl_rmsk_TE.bed > bed/GRCh38_Ensembl_rmsk_TE_LINEs.bed
grep 'class_id "SINE"' bed/GRCh38_Ensembl_rmsk_TE.bed > bed/GRCh38_Ensembl_rmsk_TE_SINEs.bed
grep 'family_id "Alu"' bed/GRCh38_Ensembl_rmsk_TE.bed > bed/GRCh38_Ensembl_rmsk_TE_Alus.bed
grep 'class_id "LTR"' bed/GRCh38_Ensembl_rmsk_TE.bed > bed/GRCh38_Ensembl_rmsk_TE_ERVs.bed
grep 'class_id "DNA"' bed/GRCh38_Ensembl_rmsk_TE.bed > bed/GRCh38_Ensembl_rmsk_TE_transposons.bed

