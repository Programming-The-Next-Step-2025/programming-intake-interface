#' This function of the Shiny server builds a PDF report that summarizes the
#' scores from the YSQ, SMI, and SCI questionnaires. It uses an existing R
#' Markdown file (`Intake Schema Therapy Report.Rmd`) as the template.
#'
#' The report includes:
#' - The scores on each schema, schema mode and coping style.
#' - Descriptions of schemas, modes, and coping styles
#'
#' @param get_scores A function that returns a list with `ysq`, `smi`, and `sci`
#' scores.
#'
#' @return A Shiny `downloadHandler` object that allows users to download the
#' report as a PDF file.
#'
#' @examples
#' output$downloadReport <- downloadReportHandler(get_scores)
#'
#' @export
downloadReportHandler <- function(get_scores) {
  shiny::downloadHandler(
    filename = function() paste0("schema_report_", Sys.Date(), ".pdf"),
    content = function(file) {
      scores <- get_scores()

      tempReport <- file.path(tempdir(), "report.Rmd")
      rmd_path <- "Intake Schema Therapy Report.Rmd"

      if (!file.exists(rmd_path)) {
        stop("R Markdown file not found: Intake Schema Therapy Report.Rmd")
      }

      file.copy(rmd_path, tempReport, overwrite = TRUE)

      params <- list(
        ysq_scores = scores$ysq,
        smi_scores = scores$smi,
        sci_scores = scores$sci,
        schemas_descriptions = schemas_descriptions,
        modes_descriptions = modes_descriptions,
        coping_descriptions = coping_descriptions
      )

      rmarkdown::render(
        input = tempReport,
        output_file = file,
        params = params,
        envir = new.env(parent = globalenv())
      )
    }
  )
}
