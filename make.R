# Setup project ----

## Install packages ----
devtools::install_deps(upgrade = "never")

## Load packages & functions ----
devtools::load_all()

## Run code
source(here::here("analyses", "download-data.R"))
