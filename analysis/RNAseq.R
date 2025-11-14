### RNAseq analysis ###
setwd("~/worm_development")

# Install QoRTs
install.packages("http://hartleys.github.io/QoRTs/QoRTs_STABLE.tar.gz",
                 repos=NULL, 
                 type="source")

library(Seurat)
library(Matrix)


# install monacle- NOT WORKING
install.packages("devtools")

devtools::install_github('cole-trapnell-lab/monocle3')


if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.20")

BiocManager::install(c('BiocGenerics', 'DelayedArray', 'DelayedMatrixStats',
                       'limma', 'lme4', 'S4Vectors', 'SingleCellExperiment',
                       'SummarizedExperiment', 'batchelor', 'HDF5Array',
                       'ggrastr'))


install.packages("BiocManager")
BiocManager::install("tximport")

# install genomicfeatures
BiocManager::install("GenomicFeatures")
BiocManager::install("txdbmaker")
install.packages("covr")

# Load libraries
library (QoRTs)
library(tximport)
library(GenomicFeatures)


# Example of uploading files
worm_gtf <- makeTxDbFromGFF("./datasets/celegans_spike.gtf", "gtf")
tx2gene_worm <- AnnotationDbi::select(worm_gtf, keys(worm_gtf, keytype = "TXNAME"), "GENEID", "TXNAME")
write.table(tx2gene_worm, "./worm_tx2gene.tsv", sep = "\t", quote = F)


s