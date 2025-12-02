
#' Title
#'
#' @param filename
#' @param dir
#'
#' @returns
#'
#' @export
#' @examples
dl_wildfinder_data <- function(filename,dir = here::here("data", "wildfinder")){
  # GitHub url
  url <- "https://github.com/rdatatoolbox/datarepo/blob/main/data/wildfinder/"
  # Create a full url
  full_url <- paste0(url,filename)
  # Create the full path where to save
  dest <- file.path(dir,filename)
  utils::download.file(url=full_url,destfile = dest)
}
