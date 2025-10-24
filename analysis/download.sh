#!/bin/bash

# Download worm2 all stages
fasterq-dump SRR28368401 -O /Users/cmdb/worm_development/data/rawdata   # Diakinesis
fasterq-dump SRR28368405 -O /Users/cmdb/worm_development/data/rawdata   # -2 oocyte
fasterq-dump SRR28368402 -O /Users/cmdb/worm_development/data/rawdata   # -1 oocyte
fasterq-dump SRR28368403 -O /Users/cmdb/worm_development/data/rawdata   # Pachytene
fasterq-dump SRR28368404 -O /Users/cmdb/worm_development/data/rawdata   # Diplotene
fasterq-dump SRR28368407 -O /Users/cmdb/worm_development/data/rawdata   # Mitotic
fasterq-dump SRR28368413 -O /Users/cmdb/worm_development/data/rawdata   # Zygote