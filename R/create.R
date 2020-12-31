#' Create a new postcard
#'
#' Create (and optionally edit) a new postcard.
#'
#' @inheritParams rmarkdown::draft
#' @param create_dir `TRUE` to create a new directory for the postcard
#'   (defaults to `FALSE`).
#' @param create_image `TRUE` to create a placeholder image
#'   (defaults to `TRUE`).
#'
#' @export
create_postcard <- function(file = "index.Rmd",
                            template = "jolla",
                            create_dir = FALSE,
                            edit = TRUE,
                            create_image = TRUE) {

  article <- rmarkdown::draft(
    file,
    template,
    "postcards",
    create_dir = create_dir,
    edit = FALSE
  )

  if(create_image) {
    img_table <- as.list(
      system.file("img",
                  c("tobi.jpg", "xiang.jpg", "herzl.jpg", "frank.jpg"),
                  package = "postcards"))

    names(img_table) <- c("jolla", "jolla-blue", "onofre", "trestles")
    file.copy(img_table[[template]], dirname(file))
  }

  if (edit) {
    if (rstudioapi::hasFun("navigateToFile"))
      rstudioapi::navigateToFile(file)
    else
      utils::file.edit(file)
  }

  invisible(article)
}
