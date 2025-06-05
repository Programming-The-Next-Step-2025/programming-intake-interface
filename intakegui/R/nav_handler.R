#' This function watches for a button click to move between pages of questions.
#' It makes sure all questions on the current page are answered before allowing
#' the user to go to the next page or tab. If questions are missing, it shows
#' a popup asking the user to complete them.
#'
#' @param input_id The ID of the navigation button to listen for (e.g., "next_ysq").
#' @param questions Returns the list of questions for the section.
#' @param page_val Stores the current page number.
#' @param next_tab The ID of the tab to switch to after finishing all pages.
#' @param input_prefix A short label used at the start of input IDs to group
#' related questions (like "ysq" or "smi").
#' @param key The name of the question field that helps build each input’s
#' unique ID (for example, "schema" or "mode").
#'
#' @examples
#' \dontrun{
#' navHandler(
#'   input_id = "next_ysq",
#'   questions = ysq_questions,
#'   page_val = ysq_page,
#'   next_tab = "smi",
#'   input_prefix = "ysq",
#'   key = "schema"
#' )
#' }
#'
#' @export
navHandler <- function(input_id, questions, page_val, next_tab, input_prefix, key) {
  shiny::observeEvent(input[[input_id]], {
    page <- page_val()
    start <- (page - 1) * per_page + 1
    end <- min(length(questions()), page * per_page)
    items <- questions()[start:end]

    incomplete <- any(sapply(items, function(q) {
      is.null(input[[paste0(input_prefix, "_", q[[key]], "_", q$index)]])
    }))

    if (incomplete) {
      shiny::showModal(shiny::modalDialog(
        title = "Incomplete",
        "Please answer all questions on this page before continuing.",
        easyClose = TRUE
      ))
      return()
    }

    if (page < ceiling(length(questions()) / per_page)) {
      page_val(page + 1)
    } else {
      all_answered <- all(sapply(questions(), function(q) {
        !is.null(input[[paste0(input_prefix, "_", q[[key]], "_", q$index)]])
      }))
      if (all_answered) {
        shiny::updateTabItems(session, "tabs", next_tab)
      } else {
        shiny::showModal(shiny::modalDialog(
          title = "Incomplete",
          paste("Please complete all questions in the", toupper(input_prefix), "section before proceeding."),
          easyClose = TRUE
        ))
      }
    }
  })
}
