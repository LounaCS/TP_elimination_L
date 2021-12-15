library(RAPToR)
library(wormRef)
vignette("RAPToR")

# upload the reference for C.elegans
list_refs("wormRef")

belari2celegans = read_delim("4_post-treated_data/mart_export.txt")

counts_df = txi.kallisto$abundance
counts_df_ortho_celegans = format_ids(counts_df,as.data.frame(belari2celegans), from = 1,to = 2)


r_larv <- prepare_refdata("Cel_embryo", "wormRef", n.inter = 600)


ae_belari <- ae(samp = log1p(counts_df_ortho_celegans),                         # input gene expression matrix
                          refdata = r_larv$interpGE,            # reference gene expression matrix
                          ref.time_series = r_larv$time.series,
                bootstrap.n = 50) # re

plot(ae_belari, show.boot_estimates=T)
