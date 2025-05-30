#' Run the Schema Therapy Assessment App
#'
#' @return Runs the Schema Therapy Assessment App
#' @export
run_app <- function() {
  shiny::shinyApp(
    ui = ui_complete(),
    server = app_server
  )
}

