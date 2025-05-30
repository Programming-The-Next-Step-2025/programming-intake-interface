#' The Young Schema Questionnaire tab of the UI builds the UI elements for the
#' Young Schema Questionnaire tab in the Schema Therapy Assessment Shiny app.
#'
#'
#' @return A UI element with:
#' - A title "Young Schema Questionnaire"
#' - A UI output placeholder "ysq_questions_ui" for the questions
#' - Previous and Next buttons for navigation
#' - A text output "ysq_page_info" to show the current page number
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(shinydashboard)
#'   shinyApp(
#'     ui = dashboardPage(
#'       dashboardHeader(title = "Test YSQ"),
#'       dashboardSidebar(),
#'       dashboardBody(
#'         ysq_tab_ui()
#'       )
#'     ),
#'     server = function(input, output, session) {}
#'   )
#' }
#'
#' @export
ysq_tab_ui <- function() {
  shinydashboard::tabItem(
    tabName = "ysq",
    shiny::h3("Young Schema Questionnaire"),
    shiny::uiOutput("ysq_questions_ui"),
    shiny::fluidRow(
      shiny::column(6, shiny::actionButton("prev_ysq", "Previous", class = "btn-lg")),
      shiny::column(6, shiny::actionButton("next_ysq", "Next", class = "btn-lg"))
    ),
    shiny::textOutput("ysq_page_info")
  )
}
