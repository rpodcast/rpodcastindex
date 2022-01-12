library(httr2)

key <- secret_make_key()

api_key_scrambled <- secret_encrypt(Sys.getenv("PODCASTINDEX_API_KEY"), key)
api_secret_scrambled <- secret_encrypt(Sys.getenv("PODCASTINDEX_API_SECRET"), key)


# save these three into .Renviron