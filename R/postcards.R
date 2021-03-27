#' Jolla website template.
#'
#' @inheritParams rmarkdown::html_document
#' @export
jolla <- function(css = NULL, includes = NULL, self_contained = TRUE) {
  get_template("jolla", css, includes, self_contained)
}

#' Jolla Blue website template.
#'
#' @inheritParams rmarkdown::html_document
#' @export
jolla_blue <- function(css = NULL, includes = NULL, self_contained = TRUE) {
  get_template("jolla-blue", css, includes, self_contained)
}

#' Trestles website template.
#'
#' @inheritParams rmarkdown::html_document
#' @export
trestles <- function(css = NULL, includes = NULL, self_contained = TRUE) {
  get_template("trestles", css, includes, self_contained)
}

#' Onofre website template.
#'
#' @inheritParams rmarkdown::html_document
#' @export
onofre <- function(css = NULL, includes = NULL, self_contained = TRUE) {
  get_template("onofre", css, includes, self_contained)
}

get_template <- function(name, css, includes, self_contained) {

  if (self_contained) {
    # Must we use "old" templates?
    minimum_required <- "2.8"
    installed <- as.character(rmarkdown::pandoc_version())
    self_contained <- !(utils::compareVersion(minimum_required, installed) > 0)
  }

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
