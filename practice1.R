## Création d'un 'dummy file' ----
file.create(".here")

## Ajout d'un fichier README : la vitrine du projet
utils::file.edit(here::here("README.md"))

here::here("README.md")
## La fonction here localise le fichier en donnant les chemins précédents celui-ci

## Ajout d'un fichier DESCRIPTION pré-rempli avec le package rcompendium
rcompendium::add_description()

## Ajout d'une licence
rcompendium::add_license(license = "GPL-2")

## Ajout de sous-répertoires
rcompendium::add_compendium(c("data","analyses", "R", "figures", "outputs"))

## Créer un code
utils::file.edit(here::here("analyses", "download-data.R"))

## Ajout des dépendances dans DESCRIPTION
usethis::use_package(package = "here")
usethis::use_package(package = "utils")

## Installation des packages manquants ----
devtools::install_deps(upgrade = "never")

## Chargement des packages et des fonctions R ----
devtools::load_all()

## Ajout d'un makefile ----
utils::file.edit(here::here("make.R"))

## Add a gitignore file
rcompendium::add_to_gitignore()
