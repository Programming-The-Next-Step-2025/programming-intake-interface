#' The server function :
#' - Initializes and shuffles questions from YSQ, SMI, and SCI.
#' - Shows a page of questions with answer options and handles switching between
#' pages.
#' - Checks that all questions on the page are answered before moving to the
#' next section.
#' - Calculates average scores for each schema, mode, and coping style.
#' - Allows to download the report in .pdf and the responses in .csv.
#'
#' @param input Shiny input object
#' @param output Shiny output object
#' @param session Shiny session object
#'
#' @details
#' This function expects the following global variables to be available:
#' - ysq_items, smi_items, sci_items: Lists of questions
#' - schemas_descriptions, modes_descriptions, coping_descriptions: Description
#' text for each category.
#'
#' It creates internal reactive values for:
#' - Shuffled questions: ysq_questions, smi_questions, sci_questions.
#' - Page numbers for navigation: ysq_page, smi_page, sci_page.
#'
#' Also defines helper functions to:
#' - Show questions on the screen,
#' - Check that all questions are answered before moving to the next section.
#'
#' @export
server_complete <- function(input, output, session) {
  per_page <- 10

  ysq_questions <- shiny::reactiveVal()
  smi_questions <- shiny::reactiveVal()
  sci_questions <- shiny::reactiveVal()

  shiny::observe({
    ysq <- list(); smi <- list(); sci <- list(); idx <- 1

    for (schema in names(ysq_items)) {
      for (q in ysq_items[[schema]]) {
        ysq[[idx]] <- list(schema = schema, question = q, index = idx)
        idx <- idx + 1
      }
    }
    ysq <- sample(ysq); for (i in seq_along(ysq)) ysq[[i]]$index <- i
    ysq_questions(ysq)

    idx <- 1
    for (mode in names(smi_items)) {
      for (q in smi_items[[mode]]) {
        smi[[idx]] <- list(mode = mode, question = q, index = idx)
        idx <- idx + 1
      }
    }
    smi <- sample(smi); for (i in seq_along(smi)) smi[[i]]$index <- i
    smi_questions(smi)

    idx <- 1
    for (coping in names(sci_items)) {
      for (q in sci_items[[coping]]) {
        sci[[idx]] <- list(coping = coping, question = q, index = idx)
        idx <- idx + 1
      }
    }
    sci <- sample(sci); for (i in seq_along(sci)) sci[[i]]$index <- i
    sci_questions(sci)
  })

  ysq_page <- shiny::reactiveVal(1)
  smi_page <- shiny::reactiveVal(1)
  sci_page <- shiny::reactiveVal(1)

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

  output$ysq_questions_ui <- shiny::renderUI({ renderQuestionUI(ysq_questions, "ysq", ysq_page, "schema") })
  output$smi_questions_ui <- shiny::renderUI({ renderQuestionUI(smi_questions, "smi", smi_page, "mode") })
  output$sci_questions_ui <- shiny::renderUI({ renderQuestionUI(sci_questions, "sci", sci_page, "coping") })

  output$ysq_page_info <- shiny::renderText({ paste("Page", ysq_page(), "of", ceiling(length(ysq_questions()) / per_page)) })
  output$smi_page_info <- shiny::renderText({ paste("Page", smi_page(), "of", ceiling(length(smi_questions()) / per_page)) })
  output$sci_page_info <- shiny::renderText({ paste("Page", sci_page(), "of", ceiling(length(sci_questions()) / per_page)) })

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

  navHandler("next_ysq", ysq_questions, ysq_page, "smi", "ysq", "schema")
  navHandler("next_smi", smi_questions, smi_page, "sci", "smi", "mode")
  navHandler("next_sci", sci_questions, sci_page, "report", "sci", "coping")

  shiny::observeEvent(input$prev_ysq, { if (ysq_page() > 1) ysq_page(ysq_page() - 1) })
  shiny::observeEvent(input$prev_smi, { if (smi_page() > 1) smi_page(smi_page() - 1) })
  shiny::observeEvent(input$prev_sci, { if (sci_page() > 1) sci_page(sci_page() - 1) })

  get_scores <- shiny::reactive({
    ysq_scores <- sapply(names(ysq_items), function(schema) {
      idxs <- which(sapply(ysq_questions(), function(q) q$schema == schema))
      vals <- sapply(idxs, function(i) {
        val <- input[[paste0("ysq_", schema, "_", i)]]
        if (is.null(val)) NA else as.numeric(val)
      })
      mean(vals, na.rm = TRUE)
    })

    smi_scores <- sapply(names(smi_items), function(mode) {
      idxs <- which(sapply(smi_questions(), function(q) q$mode == mode))
      vals <- sapply(idxs, function(i) {
        val <- input[[paste0("smi_", mode, "_", i)]]
        if (is.null(val)) NA else as.numeric(val)
      })
      mean(vals, na.rm = TRUE)
    })

    sci_scores <- sapply(names(sci_items), function(coping) {
      idxs <- which(sapply(sci_questions(), function(q) q$coping == coping))
      vals <- sapply(idxs, function(i) {
        val <- input[[paste0("sci_", coping, "_", i)]]
        if (is.null(val)) NA else as.numeric(val)
      })
      mean(vals, na.rm = TRUE)
    })

    list(ysq = ysq_scores, smi = smi_scores, sci = sci_scores)
  })

  output$downloadReport <- shiny::downloadHandler(
    filename = function() paste0("schema_report_", Sys.Date(), ".pdf"),
    content = function(file) {
      scores <- get_scores()
      tempReport <- file.path(tempdir(), "report.Rmd")
      rmd_path <- "Intake Schema Therapy Report.Rmd"
      if (!file.exists(rmd_path)) stop("R Markdown file not found: Intake Schema Therapy Report.Rmd")
      file.copy(rmd_path, tempReport, overwrite = TRUE)

      params <- list(
        ysq_scores = scores$ysq,
        smi_scores = scores$smi,
        sci_scores = scores$sci,
        schemas_descriptions = schemas_descriptions,
        modes_descriptions = modes_descriptions,
        coping_descriptions = coping_descriptions
      )

      rmarkdown::render(tempReport, output_file = file, params = params, envir = new.env(parent = globalenv()))
    }
  )

  output$downloadResponses <- shiny::downloadHandler(
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
