# explore sqlite data file

library(dplyr)
# library(dbplyr)

# connect to database
con <- DBI::dbConnect(RSQLite::SQLite(), "data/podcastindex_feeds.db")
DBI::dbListTables(con)
podcasts_db <- tbl(con, "podcasts")

# explore database
# number of podcasts
podcasts_db %>%
  count()

tmpdf <- podcasts_db %>%
  slice_sample(n = 100) %>%
  collect()