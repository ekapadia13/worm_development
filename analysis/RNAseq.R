####################################################################
### RNA-seq analysis from different meiotic stages of c. elegans ###
####################################################################

### Set up ###
# set working directory
setwd("~/worm_development")

# install packages
#BiocManager::install("tximportData")
#install.packages("umap")

# load packages
library(rtracklayer)
library(tximport)
library(DESeq2)
library(umap)
library(ggplot2)

### Prepare samples ### 
# create sample names table 
samples <- read.delim("samples2.txt", header = TRUE)
samples
# specify directory where quant.sf files are
dir <- "~/worm_development/data/processeddata/salmon_quant"
# load in files
files <- file.path(dir, samples$sample, "quant.sf")
names(files) <- samples$sample
all(file.exists(files))
files

# Create tx2gene file
# import GTF
gtf <- import("~/worm_development/reference/genomic.gtf")
# filter for transcripts
tx_gtf <- gtf[gtf$type == "transcript"]
# create tx2gene
tx2gene <- data.frame(
  tx = mcols(tx_gtf)$transcript_id,
  gene = mcols(tx_gtf)$gene_id,
  stringsAsFactors = FALSE
)

# combine counts for each sample using tx2gene
txi <- tximport(files, type = "salmon", tx2gene = tx2gene, countsFromAbundance = "no")
names(txi)
head(txi$counts)

# Order segments in developmental order
#samples$segment <- factor(samples$segment, 
                          #levels = c("mitotic", "pachytene", "diplotene", "diakinesis", "-3_oocyte", "-2_oocyte", "-1_oocyte", "zygote"))
# make sure txi$counts line up with samples
#samples_ordered <- samples[match(colnames(txi$counts), samples$sample), ]


### DEseq ###
# transform counts
dds <- DESeqDataSetFromTximport(
  txi = txi,
  colData = samples,
  design = ~worm + segment
)
#design = ~segment will want to test per segment if get more replicates
dds <- DESeq(dds)


### UMAP ###
# generate UMAP
vsd <- vst(dds, blind = TRUE)
#make a matrix for UMAP: rows = genes, columns = samples
mat <- assay(vsd)
# transpose data: rows = samples, columns = genes
mat <- t(mat)

# Prepare UMAP
set.seed(123)  # for reproducibility

# make UMAP of matrix, low n_neighbors for few samples, but increase for more samples
umap_res <- umap(mat)
umap_df <- as.data.frame(umap_res$layout)

# add columns for segment and worm
umap_df$segment <- samples$segment
umap_df$worm <- samples$worm

# order sample labels
umap_df$segment <- factor(umap_df$segment,
                          levels = c("mitotic", "pachytene", "diplotene", "diakinesis", "-3_oocyte", "-2_oocyte", "-1_oocyte", "zygote"))
umap_df$worm <- factor(umap_df$worm,
                       levels=c("worm2", "worm32", "worm23", "worm30", "worm33"))

# Plot UMAP with segment and worm
ggplot(umap_df, aes(x = V1, y = V2, color = segment, shape = worm)) +
  geom_point(size = 3) +
  theme_classic() +
  labs(x = "UMAP1", y = "UMAP2")

ggsave("~/worm_development/figures/umap_segment-worm.png")

# Plot UMAP with just segment
ggplot(umap_df, aes(x = V1, y = V2, color = segment)) +
  geom_point(size = 3) +
  theme_classic(base_size = 16) +
  labs(x = "UMAP1", y = "UMAP2")

ggsave("~/worm_development/figures/umap_segment.png")