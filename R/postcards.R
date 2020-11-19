#' @export
jolla <- function() {

  rmarkdown::html_document(
    theme = NULL,
    self_contained = TRUE,
    mathjax = NULL,
    template = system.file("pandoc_templates", "jolla.html", package = "cards"),
    md_extensions = "-autolink_bare_uris"
  )

}

#' @export
jolla_blue <- function() {

  rmarkdown::html_document(
    theme = NULL,
    self_contained = TRUE,
    mathjax = NULL,
    template = system.file("pandoc_templates", "jolla-blue.html", package = "cards"),
    md_extensions = "-autolink_bare_uris"
  )

}

#' @export
trestles <- function() {

  rmarkdown::html_document(
    theme = NULL,
    self_contained = TRUE,
    mathjax = NULL,
    template = system.file("pandoc_templates", "trestles.html", package = "cards"),
    md_extensions = "-autolink_bare_uris"
  )

}

#' @export
onofre <- function() {

  rmarkdown::html_document(
    theme = NULL,
    self_contained = TRUE,
    mathjax = NULL,
    template = system.file("pandoc_templates", "onofre.html", package = "cards"),
    md_extensions = "-autolink_bare_uris"
  )

}
