#' The Schema Coping Inventory tab of the UI builds the UI for the Schema Coping
#' Inventory tab in the Schema Therapy Assessment Shiny app.
#'
#' @return A UI element with:
#' - A title "Schema Coping Inventory"
#' - A UI output placeholder "sci_questions_ui" for the questions
#' - Previous and Next buttons for navigation
#' - A text output "sci_page_info" to show the current page number
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(shinydashboard)
#'   shinyApp(
#'     ui = dashboardPage(
#'       dashboardHeader(title = "Test SCI"),
#'       dashboardSidebar(),
#'       dashboardBody(
#'         sci_tab_ui()
#'       )
#'     ),
#'     server = function(input, output, session) {}
#'   )
#' }
#'
#' @export
sci_tab_ui <- function() {
  shinydashboard::tabItem(
    tabName = "sci",
    shiny::h3("Schema Coping Inventory"),
    shiny::uiOutput("sci_questions_ui"),
    shiny::fluidRow(
      shiny::column(6, shiny::actionButton("prev_sci", "Previous", class = "btn-lg")),
      shiny::column(6, shiny::actionButton("next_sci", "Next", class = "btn-lg"))
    ),
    shiny::textOutput("sci_page_info")
  )
}


