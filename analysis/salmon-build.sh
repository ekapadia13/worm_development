#!/bin/bash

FASTA="/Users/cmdb/worm_development/index/rna.fna"
OUTPUT_DIR="/Users/cmdb/worm_development/index"

salmon index -t "$FASTA" -i "$OUTPUT_DIR"