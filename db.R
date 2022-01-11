# explore sqlite data file

library(dplyr)

# connect to database
con <- DBI::dbConnect(RSQLite::SQLite(), "data/podcastindex_feeds.db")
DBI::dbListTables(con)
podcasts_db <- tbl(con, "podcasts")

# explore database
# number of podcasts
podcasts_db %>%
  count()

