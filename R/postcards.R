#' Jolla website template.
#'
#' @inheritParams rmarkdown::html_document
#' @export
jolla <- function(css = NULL, includes = NULL) {
  get_template("jolla", css, includes)
}

#' Jolla Blue website template.
#'
#' @inheritParams rmarkdown::html_document
#' @export
jolla_blue <- function(css = NULL, includes = NULL) {
  get_template("jolla-blue", css, includes)
}

#' Jolla Blue website template.
#'
#' @inheritParams rmarkdown::html_document
#' @export
trestles <- function(css = NULL, includes = NULL) {
  get_template("trestles", css, includes)
}

#' Onofre website template.
#'
#' @inheritParams rmarkdown::html_document
#' @export
onofre <- function(css = NULL, includes = NULL) {
  get_template("onofre", css, includes)
}

#' Solana website template.
#'
#' @inheritParams rmarkdown::html_document
#' @export
solana <- function(css = NULL, includes = NULL) {
  get_template("solana", css, includes)
}

get_template <- function(name, css, includes) {

  # Must we use "old" templates?
  minimum_required <- "2.8"
  installed <- as.character(rmarkdown::pandoc_version())
  self_contained <- !(utils::compareVersion(minimum_required, installed) > 0)

  template_file <- paste0(name, ".html")

  rmarkdown::html_document(
    theme = NULL,
    self_contained = self_contained,
    mathjax = NULL,
    template = system.file("pandoc_templates", template_file, package = "postcards"),
    css = css,
    includes = includes,
    md_extensions = "-autolink_bare_uris"
  )
}
