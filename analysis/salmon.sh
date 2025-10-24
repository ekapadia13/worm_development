#!/bin/bash
INDEX="/Users/cmdb/worm_development/index"
INPUT_DIR="/Users/cmdb/worm_development/data/processeddata/trim-galore"
OUTPUT_DIR="/Users/cmdb/worm_development/data/processeddata/salmon_quant"


salmon quant -i "$INDEX" -l A -1 ${INPUT_DIR}/SRR28368401_1_val_1.fq -2 ${INPUT_DIR}/SRR28368401_2_val_2.fq --validateMappings -o "$OUTPUT_DIR"
salmon quant -i "$INDEX" -l A -1 ${INPUT_DIR}/SRR28368403_1_val_1.fq -2 ${INPUT_DIR}/SRR28368403_2_val_2.fq --validateMappings -o "$OUTPUT_DIR"
salmon quant -i "$INDEX" -l A -1 ${INPUT_DIR}/SRR28368404_1_val_1.fq -2 ${INPUT_DIR}/SRR28368404_2_val_2.fq --validateMappings -o "$OUTPUT_DIR"
salmon quant -i "$INDEX" -l A -1 ${INPUT_DIR}/SRR28368405_1_val_1.fq -2 ${INPUT_DIR}/SRR28368405_2_val_2.fq --validateMappings -o "$OUTPUT_DIR"
salmon quant -i "$INDEX" -l A -1 ${INPUT_DIR}/SRR28368407_1_val_1.fq -2 ${INPUT_DIR}/SRR28368407_2_val_2.fq --validateMappings -o "$OUTPUT_DIR"
salmon quant -i "$INDEX" -l A -1 ${INPUT_DIR}/SRR28368413_1_val_1.fq -2 ${INPUT_DIR}/SRR28368413_2_val_2.fq --validateMappings -o "$OUTPUT_DIR"

