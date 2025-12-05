#!/bin/bash
INDEX="/Users/cmdb/worm_development/index"
INPUT_DIR="/Users/cmdb/worm_development/data/processeddata/trim-galore2"
OUTPUT_DIR="/Users/cmdb/worm_development/data/processeddata/salmon_quant"


for R1 in ${INPUT_DIR}/SRR*_1_val_1.fq
do
    # Extract the sample name
    base=$(basename "$R1" _1_val_1.fq)

    # Define R2
    R2="${INPUT_DIR}/${base}_2_val_2.fq"

    # Make output folder for each sample
    OUTDIR="${OUTPUT_DIR}/${base}"
    mkdir -p ${OUTDIR}

    salmon quant -i ${INDEX} -l A \
        -1 "$R1" -2 "$R2" \
        --validateMappings \
        -o ${OUTDIR}
done






