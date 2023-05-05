#' generate NASIS to EDIT (single) report
#' 
#' @name NASIS_EDIT_single
#' 
#' @param data_path path to ecosite_report.csv (generated from NASIS Report)
#' @param ecosite_id ecosite code of interest
#' @param output_directory output directory for report
#' 
#' @return interactive html report
#' @export

NASIS_EDIT_single <- function(data_path, ecosite_id, output_directory) {
  rmarkdown::render(
    system.file("rmd", "NASIS_data_to_EDIT_single.Rmd", package = "editdata"), 
    output_dir = output_directory,
    params = list(
      ecosite = ecosite,
      data_path = data_path
    )
  )
  
}