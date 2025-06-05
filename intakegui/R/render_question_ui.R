#' This function creates UI elements to show a set of questions for the current
#' page. Each question is displayed with radio buttons for answers from 1 to 7.
#'
#' @param questions Returns a list of question objects.
#' @param type A short word added at the start of each input’s ID to keep them
#' unique, like "ysq" or "smi".
#' @param page Indicates the current page number.
#' @param key The name of the part in each question used to make unique input
#' IDs, like 'schema' or 'mode'.
#'
#' @return A list of shiny UI elements showing the questions and answers.
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   questions <- reactive({
#'     list(
#'       list(question = "How often do you feel stressed?", schema = "stress", index = 1),
#'       list(question = "Do you enjoy social events?", schema = "social", index = 2)
#'     )
#'   })
#'   page <- reactiveVal(1)
#'   ui <- fluidPage(
#'     uiOutput("questions_ui")
#'   )
#'   server <- function(input, output, session) {
#'     output$questions_ui <- renderUI({
#'       renderQuestionUI(questions, "ysq", page, "schema")
#'     })
#'   }
#'   shinyApp(ui, server)
#' }
#'
#' @export
renderQuestionUI <- function(questions, type, page, key) {
  start <- (page() - 1) * per_page + 1
  end <- min(length(questions()), page() * per_page)
  items <- questions()[start:end]
  shiny::tagList(lapply(items, function(q) {
    shiny::tagList(
      shiny::div(style = "margin-bottom: 10px;", q$question),
      shiny::radioButtons(
        inputId = paste0(type, "_", q[[key]], "_", q$index),
        label = NULL,
        choices = setNames(as.character(1:7), as.character(1:7)),
        selected = character(0),
        inline = TRUE
      )
    )
  }))
}
