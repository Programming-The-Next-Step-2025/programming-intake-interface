#' This function of the Shiny server generates a download handler that writes
#' all responses from YSQ, SMI, and SCI questionnaires into a CSV file.
#' It includes the questionnaire type, schema/mode/coping category, question
#' text, response, and the average score for that category.
#'
#' @param ysq_questions YSQ questions
#' @param smi_questions SMI questions
#' @param sci_questions SCI questions
#' @param input Shiny input object containing user responses.
#'
#' @examples
#' output$downloadResponses <- downloadResponsesHandler(ysq_questions, smi_questions, sci_questions, input)
#'
#' @export
downloadResponsesHandler <- function(ysq_questions, smi_questions, sci_questions, input) {
  shiny::downloadHandler(
    filename = function() paste0("schema_responses_", Sys.Date(), ".csv"),
    content = function(file) {
      `%||%` <- function(a, b) if (!is.null(a)) a else b

      get_resp <- function(type, category, index) {
        input[[paste0(type, "_", category, "_", index)]] %||% NA
      }

      ysq_data <- do.call(rbind, lapply(ysq_questions(), function(q) {
        response <- get_resp("ysq", q$schema, q$index)
        data.frame(
          type = "YSQ",
          category = q$schema,
          question = q$question,
          response = response,
          stringsAsFactors = FALSE
        )
      }))
      ysq_data$mean_score <- ave(as.numeric(ysq_data$response), ysq_data$category, FUN = function(x) round(mean(x, na.rm = TRUE), 2))
      ysq_data <- ysq_data[order(ysq_data$category), ]

      smi_data <- do.call(rbind, lapply(smi_questions(), function(q) {
        response <- get_resp("smi", q$mode, q$index)
        data.frame(
          type = "SMI",
          category = q$mode,
          question = q$question,
          response = response,
          stringsAsFactors = FALSE
        )
      }))
      smi_data$mean_score <- ave(as.numeric(smi_data$response), smi_data$category, FUN = function(x) round(mean(x, na.rm = TRUE), 2))
      smi_data <- smi_data[order(smi_data$category), ]

      sci_data <- do.call(rbind, lapply(sci_questions(), function(q) {
        response <- get_resp("sci", q$coping, q$index)
        data.frame(
          type = "SCI",
          category = q$coping,
          question = q$question,
          response = response,
          stringsAsFactors = FALSE
        )
      }))
      sci_data$mean_score <- ave(as.numeric(sci_data$response), sci_data$category, FUN = function(x) round(mean(x, na.rm = TRUE), 2))
      sci_data <- sci_data[order(sci_data$category), ]

      full_data <- rbind(ysq_data, smi_data, sci_data)
      write.csv(full_data, file, row.names = FALSE)
    }
  )
}
