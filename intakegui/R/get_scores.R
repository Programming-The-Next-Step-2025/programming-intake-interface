#' This function of the Shiny server collects all the user's answers, groups them
#' by their categories (schemas, modes, coping styles), and calculates the average
#' score for each category.
#'
#' Missing answers are ignored when calculating averages.
#'
#' @return A list with three vectors:
#' - `ysq`: average scores for each YSQ schema
#' - `smi`: average scores for each SMI mode
#' - `sci`: average scores for each SCI coping style
#'
#' @examples
#' scores <- get_scores()
#' print(scores$ysq)
#' print(scores$smi)
#' print(scores$sci)
#'
#' @export
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
