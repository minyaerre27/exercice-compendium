# Download one file

## Create a path
dir <- here::here("data", "wildfinder")
dir.create(dir)

## Filename
file <- "wildfinder-ecoregions_list.csv"

## GitHub url
url <- "https://github.com/rdatatoolbox/datarepo/blob/main/data/wildfinder/wildfinder-ecoregions_list.csv"

## Build full path
dest <- file.path(dir, file)

## Donwload the file using the url and the destination
utils::download.file(url=url, destfile=dest)


# This line creates a scipt in the R file
usethis::use_r("dl_wildfinder_data")


# Calling the function
dl_wildfinder_data("wildfinder-ecoregions_species.csv")
dl_wildfinder_data("wildfinder-mammals_list.csv")
