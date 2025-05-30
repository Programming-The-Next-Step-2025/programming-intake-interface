#' The Report Download tab in the UI builds the UI elements for the Download
#' Report tab in the Schema Therapy Assessment Shiny app.
#'
#' @return A UI object containing:
#' \itemize{
#'   \item Title "Download Your Schema Report"
#'   \item A download button for the .pdf report ("downloadReport")
#'   \item Line breaks for spacing
#'   \item A download button for the .csv file ("downloadResponses")
#' }
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(shinydashboard)
#'   shinyApp(
#'     ui = dashboardPage(
#'       dashboardHeader(title = "Test Report"),
#'       dashboardSidebar(),
#'       dashboardBody(
#'         report_tab_ui()
#'       )
#'     ),
#'     server = function(input, output, session) {}
#'   )
#' }
#'
#' @export
report_tab_ui <- function() {
  shinydashboard::tabItem(
    tabName = "report",
    shiny::h3("Download Your Schema Report"),
    shiny::downloadButton("downloadReport", "Download PDF Report"),
    shiny::br(), shiny::br(),
    shiny::downloadButton("downloadResponses", "Download CSV Responses")
  )
}


