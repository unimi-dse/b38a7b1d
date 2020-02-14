#' run
#'
#' Runs a Graphical User Interface to evaluate the projec ,.
#' ab
#' @return shiny app
#'
#' @export
run <- function(){

  shiny::runApp(system.file("shiny/run", package = "ecommercedataanalysis"))
}
