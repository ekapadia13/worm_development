#!/bin/bash

# set output directory
OUTPUT_DIR="/Users/cmdb/worm_development/data/processeddata/trim-galore"
INPUT_DIR="/Users/cmdb/worm_development/data/rawdata"

# trim galore on paired reads
trim_galore --paired --quality 10 --length 35 --output_dir "$OUTPUT_DIR" ${INPUT_DIR}/SRR28368401_1.fastq ${INPUT_DIR}/SRR28368401_2.fastq  
trim_galore --paired --quality 10 --length 35 --output_dir "$OUTPUT_DIR" ${INPUT_DIR}/SRR28368402_1.fastq ${INPUT_DIR}/SRR28368402_2.fastq  
trim_galore --paired --quality 10 --length 35 --output_dir "$OUTPUT_DIR" ${INPUT_DIR}/SRR28368403_1.fastq ${INPUT_DIR}/SRR28368403_2.fastq  
trim_galore --paired --quality 10 --length 35 --output_dir "$OUTPUT_DIR" ${INPUT_DIR}/SRR28368404_1.fastq ${INPUT_DIR}/SRR28368404_2.fastq  
trim_galore --paired --quality 10 --length 35 --output_dir "$OUTPUT_DIR" ${INPUT_DIR}/SRR28368405_1.fastq ${INPUT_DIR}/SRR28368405_2.fastq  
trim_galore --paired --quality 10 --length 35 --output_dir "$OUTPUT_DIR" ${INPUT_DIR}/SRR28368407_1.fastq ${INPUT_DIR}/SRR28368407_2.fastq  
trim_galore --paired --quality 10 --length 35 --output_dir "$OUTPUT_DIR" ${INPUT_DIR}/SRR28368413_1.fastq ${INPUT_DIR}/SRR28368413_2.fastq  
