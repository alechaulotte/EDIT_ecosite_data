#' generate NASIS to EDIT (single) report
#' 
#' @name NASIS_EDIT_single
#' 
#' @param ecosite ecosite code of interest
#' @param output_directory output directory for report (optional, will default output to package folder)
#' 
#' @return html report
#' @export

NASIS_EDIT_single <- function(ecosite, output_directory = getwd()) {
  rmarkdown::render(
    system.file("rmd", "NASIS_data_to_EDIT_single.Rmd", package = "soilutils"), 
    ourput_dir = output_directory,
    params = list(
      ecosite = ecosite
    )
  )
  
}