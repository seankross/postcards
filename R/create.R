#' Create a new postcard
#'
#' Create (and optionally edit) a new postcard.
#'
#' @inheritParams rmarkdown::draft
#' @param create_dir `TRUE` to create a new directory for the postcard
#'   (defaults to `FALSE`).
#'
#' @export
create_postcard <- function(file = "postcard.Rmd",
                            template = "jolla",
                            create_dir = FALSE,
                            edit = TRUE) {
  article <- rmarkdown::draft(
    file,
    template,
    "postcards",
    create_dir = create_dir,
    edit = FALSE
  )
  if (edit) {
    if (rstudioapi::hasFun("navigateToFile"))
      rstudioapi::navigateToFile(file)
    else
      utils::file.edit(file)
  }
}
