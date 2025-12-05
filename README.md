Emaan Kapadia and Rose Runyan's 2025 Quantitative Biology Lab Project

### Exploring the Differential Expression of Genes during Oogenesis in C. elegans

#### Description
We're basing our project from data collected in Su et al., 2024 frontiers, where they collected scRNA-seq data from differing segments of the C. elegans germline. We plan to start with the raw sequencing files, and go through the processing pipeline. Once processed, we would like to perform various scRNA-seq analyses, such as generating a UMAP, analyze differential experession, and then further analyze the unique genes and their function (through GO term analyses) for a region of interest. :heart:

Published figure from Su et al. \
![UMAP clustered by C. elegans Gonad Developmental Axis](UMAP.png) 

Dataset ID: GSE261784 from Su et al. \
[Dataset Link](https://www.ncbi.nlm.nih.gov/sra?linkname=bioproject_sra_all&from_uid=1088873)

Transcriptome: WBcel235 from [NCBI](https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000002985.6/)

Software:
1. [Quality filtering and cutting adapters with trim-galore version 0.6.10](https://github.com/FelixKrueger/TrimGalore)
2. [Alignment done with Salmon version 1.10.3](https://salmon.readthedocs.io/en/latest/)
3. [DE analysis with R- DEseq version 1.44.0](https://bioconductor.org/packages/release/bioc/html/DESeq2.html)
4. UMAP and clustering
- [R- umap version 0.2.10.0](https://cran.r-project.org/web/packages/umap/vignettes/umap.html)
- [R- ggplot version 3.5.2](https://ggplot2.tidyverse.org/)
4. [RNA seq analysis with monocle3](https://github.com/cole-trapnell-lab/monocle3)
5. [GO term analysis with ClusterProfiler version 4.16.0](https://bioconductor.org/packages/release/bioc/html/clusterProfiler.html)

#### Goals
1. Create a UMAP that we expect will cluster based on the different cell types expressed along the gonad developmental axis.
2. Perform GO term analysis to determine the roles of the genes in each developmental segment
3. Isolate a group of genes of interest and create a heatmap for each one that shows its differential expression across the developmental axis.

#### Presentation
[Differential Expression of Genes during Oogenesis in C. elegans](https://docs.google.com/presentation/d/1eKyZTTec71As3WFb2Lsg240PBdxN5jTtKbHZBuMuKS0/edit?slide=id.p#slide=id.p)
