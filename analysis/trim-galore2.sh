#!/bin/bash

# set output directory
OUTPUT_DIR="/Users/cmdb/worm_development/data/processeddata/trim-galore2"
INPUT_DIR="/Users/cmdb/worm_development/data/rawdata2"

# for loop to perform trim galore on paired reads for each sample in directory
for R1 in ${INPUT_DIR}/SRR*_1.fastq
do
    # Derive the base sample name (remove _1.fq.gz)
    base=$(basename "$R1" _1.fastq)

    R2="${INPUT_DIR}/${base}_2.fastq"

    trim_galore --paired --quality 10 --length 35 \
        --output_dir ${OUTPUT_DIR} \
        "$R1" "$R2"
done 





