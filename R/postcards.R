#' Jolla website template.
#'
#' @export
jolla <- function() {
  get_template("jolla")
}

#' Jolla Blue website template.
#'
#' @export
jolla_blue <- function() {
  get_template("jolla-blue")
}

#' Jolla Blue website template.
#'
#' @export
trestles <- function() {
  get_template("trestles")
}

#' Onofre website template.
#'
#' @export
onofre <- function() {
  get_template("onofre")
}

get_template <- function(name) {

  # Must we use "old" templates?
  minimum_required <- "2.8"
  installed <- as.character(rmarkdown::pandoc_version())
  old <- utils::compareVersion(minimum_required, installed) > 0

  if(old) {
    template_file <- paste0(name, "-pandoc-old.html")
    self_contained <- FALSE
  } else {
    template_file <- paste0(name, ".html")
    self_contained <- TRUE
  }

  result <- rmarkdown::html_document(
    theme = NULL,
    self_contained = self_contained,
    mathjax = NULL,
    template = system.file("pandoc_templates", template_file, package = "postcards"),
    md_extensions = "-autolink_bare_uris"
  )

  # Obfuscate Emails
  index <- which(result$pandoc$args == "--email-obfuscation")
  if (length(index) != 0) {
    result$pandoc$args[index + 1] <- "references"
  }
  result
}
