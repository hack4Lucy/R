
## [21-Apr-2017]. Obtain sample of dataset from a dataframe for clustered dataset
nbr_cluster <- 600
samp_id <- sample(x = unique(NESDA_orig$pident), nbr_cluster, replace = FALSE)
samp_id <- c(rep(samp_id, each=5))
datasample <- NESDA_orig[NESDA_orig$pident %in% c(samp_id), ]
