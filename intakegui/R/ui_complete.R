#' The complete UI for my Schema Therapy Assessment App builds the full dashboard
#' layout for the Schema Therapy Assessment Shiny app.
#'
#' @return A shinydashboard containing the complete UI.
#'
#' @details The layout includes:
#' \itemize{
#'   \item A red dashboard
#'   \item A sidebar menu for navigating between questionnaires and the download of the report
#'   \item The tab content for the YSQ, SMI, SCI, and report download
#' }
#'
#' @examples
#' if (interactive()) {
#'   shinyApp(
#'     ui = ui_complete(),
#'     server = function(input, output, session) {}
#'   )
#' }
#'
#' @export
ui_complete <- function() {
  shinydashboard::dashboardPage(
    skin = "red",
    shinydashboard::dashboardHeader(title = shiny::span("Schema Therapy Assessment")),
    shinydashboard::dashboardSidebar(
      width = 300,
      shinydashboard::sidebarMenu(id = "tabs",
                                  shinydashboard::menuItem("Young Schema Questionnaire", tabName = "ysq", icon = shiny::icon("list")),
                                  shinydashboard::menuItem("Schema Mode Inventory", tabName = "smi", icon = shiny::icon("th")),
                                  shinydashboard::menuItem("Schema Coping Inventory", tabName = "sci", icon = shiny::icon("tasks")),
                                  shinydashboard::menuItem("Download Report", tabName = "report", icon = shiny::icon("download"))
      )
    ),
    shinydashboard::dashboardBody(
      shinyjs::useShinyjs(),
      shiny::tags$head(shiny::tags$title("Schema Therapy Assessment")),
      shinydashboard::tabItems(
        ysq_tab_ui(),
        smi_tab_ui(),
        sci_tab_ui(),
        report_tab_ui()
      )
    )
  )
}
