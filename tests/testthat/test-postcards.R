test_template <- function(template){
  skip_on_cran()

  temp_file <- tempfile()

  test_file_path <- rmarkdown::draft(temp_file, template, package = "postcards", edit = FALSE)
  file.exists(test_file_path)
}

test_that("Templates can be created.", {
  expect_true(test_template("jolla"))
  expect_true(test_template("jolla-blue"))
  expect_true(test_template("trestles"))
  expect_true(test_template("onofre"))
})
