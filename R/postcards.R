#' Postcards templates
#'
#' @inheritParams rmarkdown::html_document
#' @param ... Additional arguments passed to `rmarkdown::html_document()`
#' @export
jolla <- function(css = NULL, includes = NULL, ...) {
  get_template("jolla", css, includes, ...)
}

#' @rdname jolla
#' @export
jolla_blue <- function(css = NULL, includes = NULL, ...) {
  get_template("jolla-blue", css, includes, ...)
}

#' @rdname jolla
#' @export
trestles <- function(css = NULL, includes = NULL, ...) {
  get_template("trestles", css, includes, ...)
}

#' @rdname jolla
#' @export
onofre <- function(css = NULL, includes = NULL, ...) {
  get_template("onofre", css, includes, ...)
}

#' @rdname jolla
#' @export
solana <- function(css = NULL, includes = NULL, ...) {
  get_template("solana", css, includes, ...)
}

get_template <- function(name, css, includes, ...) {

  # Must we use "old" templates?
  self_contained <- rmarkdown::pandoc_available("2.8")

  template_file <- paste0(name, ".html")

  rmarkdown::html_document(
    theme = NULL,
    self_contained = self_contained,
    mathjax = NULL,
    template = system.file("pandoc_templates", template_file, package = "postcards"),
    css = css,
    includes = includes,
    md_extensions = "-autolink_bare_uris",
    ...
  )
}
