#' Jolla website template.
#'
#' @export
jolla <- function() {

  rmarkdown::html_document(
    theme = NULL,
    self_contained = TRUE,
    mathjax = NULL,
    template = system.file("pandoc_templates", "jolla.html", package = "postcards"),
    md_extensions = "-autolink_bare_uris"
  )

}

#' Jolla Blue website template.
#'
#' @export
jolla_blue <- function() {

  rmarkdown::html_document(
    theme = NULL,
    self_contained = TRUE,
    mathjax = NULL,
    template = system.file("pandoc_templates", "jolla-blue.html", package = "postcards"),
    md_extensions = "-autolink_bare_uris"
  )

}

#' Jolla Blue website template.
#'
#' @export
trestles <- function() {

  rmarkdown::html_document(
    theme = NULL,
    self_contained = TRUE,
    mathjax = NULL,
    template = system.file("pandoc_templates", "trestles.html", package = "postcards"),
    md_extensions = "-autolink_bare_uris"
  )

}

#' Onofre website template.
#'
#' @export
onofre <- function() {

  rmarkdown::html_document(
    theme = NULL,
    self_contained = TRUE,
    mathjax = NULL,
    template = system.file("pandoc_templates", "onofre.html", package = "postcards"),
    md_extensions = "-autolink_bare_uris"
  )

}
