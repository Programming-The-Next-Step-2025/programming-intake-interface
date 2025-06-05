#' The schema Mode Inventory tab of the UI builds the UI elements for the Schema
#' Mode Inventory tab in the Schema Therapy Assessment Shiny app.
#'
#' @return A UI element with:
#' - A title "Schema Mode Inventory"
#' - A UI output placeholder "smi_questions_ui" for questions
#' - Previous and Next navigation buttons
#' - A text output "smi_page_info" to show the current page number
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(shinydashboard)
#'   shinyApp(
#'     ui = dashboardPage(
#'       dashboardHeader(title = "Test SMI"),
#'       dashboardSidebar(),
#'       dashboardBody(
#'         smi_tab_ui()
#'       )
#'     ),
#'     server = function(input, output, session) {}
#'   )
#' }
#'
#' @export
smi_tab_ui <- function() {
  shinydashboard::tabItem(
    tabName = "smi",
    shiny::h3("Schema Mode Inventory"),
    shiny::uiOutput("smi_questions_ui"),
    shiny::fluidRow(
      shiny::column(6, shiny::actionButton("prev_smi", "Previous", class = "btn-lg")),
      shiny::column(6, shiny::actionButton("next_smi", "Next", class = "btn-lg"))
    ),
    shiny::textOutput("smi_page_info")
  )
}
