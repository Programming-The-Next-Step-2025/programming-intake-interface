library(shiny)
library(shinydashboard)
library(shinyjs)
library(rmarkdown)

source("schemas_modes.R")

ui <- dashboardPage(
  skin = "red",
  dashboardHeader(
    title = span("Schema Therapy Assessment")
  ),
  dashboardSidebar(
    width = 300,
    sidebarMenu(id = "tabs",
                menuItem("Young Schema Questionnaire", tabName = "ysq", icon = icon("list")),
                menuItem("Schema Mode Inventory", tabName = "smi", icon = icon("th")),
                menuItem("Download Report", tabName = "report", icon = icon("download"))
    )
  ),
  dashboardBody(
    useShinyjs(),
    tags$head(tags$title("Schema Therapy Assessment")),
    tabItems(
      tabItem("ysq",
              h3("Young Schema Questionnaire"),
              uiOutput("ysq_questions_ui"),
              fluidRow(
                column(6, actionButton("prev_ysq", "Previous", class = "btn-lg")),
                column(6, actionButton("next_ysq", "Next", class = "btn-lg"))
              ),
              textOutput("ysq_page_info")
      ),
      tabItem("smi",
              h3("Schema Mode Inventory"),
              uiOutput("smi_questions_ui"),
              fluidRow(
                column(6, actionButton("prev_smi", "Previous", class = "btn-lg")),
                column(6, actionButton("next_smi", "Next", class = "btn-lg"))
              ),
              textOutput("smi_page_info")
      ),
      tabItem("report",
              h3("Download Your Schema Report"),
              downloadButton("downloadReport", "Download PDF Report"),
              br(), br(),
              downloadButton("downloadResponses", "Download CSV Responses")
      )
    )
  )
)

server <- function(input, output, session) {
  per_page <- 10

  ysq_questions <- reactiveVal()
  smi_questions <- reactiveVal()

  observe({
    ysq <- list()
    idx <- 1
    for (schema in names(ysq_items)) {
      for (q in ysq_items[[schema]]) {
        ysq[[idx]] <- list(schema = schema, question = q, index = idx)
        idx <- idx + 1
      }
    }
    ysq <- sample(ysq)
    for (i in seq_along(ysq)) ysq[[i]]$index <- i
    ysq_questions(ysq)

    smi <- list()
    idx <- 1
    for (mode in names(smi_items)) {
      for (q in smi_items[[mode]]) {
        smi[[idx]] <- list(mode = mode, question = q, index = idx)
        idx <- idx + 1
      }
    }
    smi <- sample(smi)
    for (i in seq_along(smi)) smi[[i]]$index <- i
    smi_questions(smi)
  })

  ysq_page <- reactiveVal(1)
  smi_page <- reactiveVal(1)

  ysq_completed <- reactive({
    all(sapply(ysq_questions(), function(q) {
      !is.null(input[[paste0("ysq_", q$schema, "_", q$index)]])
    }))
  })

  smi_completed <- reactive({
    all(sapply(smi_questions(), function(q) {
      !is.null(input[[paste0("smi_", q$mode, "_", q$index)]])
    }))
  })

  observeEvent(input$tabs, {
    if (input$tabs == "smi" && !ysq_completed()) {
      updateTabItems(session, "tabs", "ysq")
      showModal(modalDialog("Please complete all YSQ questions before moving to the SMI section.",
                            easyClose = TRUE))
    }
    if (input$tabs == "report" && (!ysq_completed() || !smi_completed())) {
      updateTabItems(session, "tabs", ifelse(!ysq_completed(), "ysq", "smi"))
      showModal(modalDialog("Please complete all questionnaires before downloading the report.",
                            easyClose = TRUE))
    }
  })

  observeEvent(input$next_ysq, {
    qlist <- ysq_questions()
    page <- ysq_page()
    start <- (page - 1) * per_page + 1
    end <- min(length(qlist), page * per_page)
    items_to_check <- qlist[start:end]

    unanswered <- sapply(items_to_check, function(q) {
      is.null(input[[paste0("ysq_", q$schema, "_", q$index)]])
    })

    if (any(unanswered)) {
      showModal(modalDialog("Please answer all questions on this page.",
                            easyClose = TRUE))
    } else {
      max_page <- ceiling(length(qlist) / per_page)
      if (page < max_page) {
        ysq_page(page + 1)
      } else {
        updateTabItems(session, "tabs", "smi")
      }
    }
  })

  observeEvent(input$prev_ysq, {
    if (ysq_page() > 1) ysq_page(ysq_page() - 1)
  })

  output$ysq_questions_ui <- renderUI({
    qlist <- ysq_questions()
    page <- ysq_page()
    start <- (page - 1) * per_page + 1
    end <- min(length(qlist), page * per_page)
    items_to_show <- qlist[start:end]

    tagList(lapply(items_to_show, function(q) {
      tagList(
        div(style = "margin-bottom: 10px;", q$question),
        radioButtons(
          inputId = paste0("ysq_", q$schema, "_", q$index),
          label = NULL,
          choices = setNames(as.character(1:6), as.character(1:6)),
          selected = character(0),
          inline = TRUE
        )
      )
    }))
  })

  output$ysq_page_info <- renderText({
    paste("Page", ysq_page(), "of", ceiling(length(ysq_questions()) / per_page))
  })

  observeEvent(input$next_smi, {
    qlist <- smi_questions()
    page <- smi_page()
    start <- (page - 1) * per_page + 1
    end <- min(length(qlist), page * per_page)
    items_to_check <- qlist[start:end]

    unanswered <- sapply(items_to_check, function(q) {
      is.null(input[[paste0("smi_", q$mode, "_", q$index)]])
    })

    if (any(unanswered)) {
      showModal(modalDialog("Please answer all questions on this page.",
                            easyClose = TRUE))
    } else {
      max_page <- ceiling(length(qlist) / per_page)
      if (page < max_page) {
        smi_page(page + 1)
      } else {
        updateTabItems(session, "tabs", "report")
      }
    }
  })

  observeEvent(input$prev_smi, {
    if (smi_page() > 1) smi_page(smi_page() - 1)
  })

  output$smi_questions_ui <- renderUI({
    qlist <- smi_questions()
    page <- smi_page()
    start <- (page - 1) * per_page + 1
    end <- min(length(qlist), page * per_page)
    items_to_show <- qlist[start:end]

    tagList(lapply(items_to_show, function(q) {
      tagList(
        div(style = "margin-bottom: 10px;", q$question),
        radioButtons(
          inputId = paste0("smi_", q$mode, "_", q$index),
          label = NULL,
          choices = setNames(as.character(1:6), as.character(1:6)),
          selected = character(0),
          inline = TRUE
        )
      )
    }))
  })

  output$smi_page_info <- renderText({
    paste("Page", smi_page(), "of", ceiling(length(smi_questions()) / per_page))
  })

  get_scores <- reactive({
    ysq_scores <- sapply(names(ysq_items), function(schema) {
      idxs <- which(sapply(ysq_questions(), function(q) q$schema == schema))
      vals <- sapply(idxs, function(i) input[[paste0("ysq_", schema, "_", i)]])
      mean(as.numeric(vals), na.rm = TRUE)
    })

    smi_scores <- sapply(names(smi_items), function(mode) {
      idxs <- which(sapply(smi_questions(), function(q) q$mode == mode))
      vals <- sapply(idxs, function(i) input[[paste0("smi_", mode, "_", i)]])
      mean(as.numeric(vals), na.rm = TRUE)
    })

    list(ysq = ysq_scores, smi = smi_scores)
  })

  output$downloadReport <- downloadHandler(
    filename = function() {
      paste0("schema_report_", Sys.Date(), ".pdf")
    },
    content = function(file) {
      scores <- get_scores()
      tempReport <- file.path(tempdir(), "report.Rmd")
      file.copy("report.Rmd", tempReport, overwrite = TRUE)

      params <- list(
        ysq_scores = scores$ysq,
        smi_scores = scores$smi,
        schema_desc = schema_descriptions,
        mode_desc = mode_descriptions
      )

      rmarkdown::render(tempReport, output_file = file,
                        params = params,
                        envir = new.env(parent = globalenv()))
    }
  )

  output$downloadResponses <- downloadHandler(
    filename = function() {
      paste0("schema_responses_", Sys.Date(), ".csv")
    },
    content = function(file) {
      ysq_data <- do.call(rbind, lapply(ysq_questions(), function(q) {
        data.frame(
          type = "YSQ",
          schema_or_mode = q$schema,
          question = q$question,
          response = input[[paste0("ysq_", q$schema, "_", q$index)]],
          stringsAsFactors = FALSE
        )
      }))

      smi_data <- do.call(rbind, lapply(smi_questions(), function(q) {
        data.frame(
          type = "SMI",
          schema_or_mode = q$mode,
          question = q$question,
          response = input[[paste0("smi_", q$mode, "_", q$index)]],
          stringsAsFactors = FALSE
        )
      }))

      full_data <- rbind(ysq_data, smi_data)
      write.csv(full_data, file, row.names = FALSE)
    }
  )
}

shinyApp(ui, server)
