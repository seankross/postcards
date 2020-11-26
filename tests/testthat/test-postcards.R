test_template <- function(template){
  skip_on_cran()

  temp_file <- tempfile()

  test_file_path <- rmarkdown::draft(temp_file, template, package = "postcards", edit = FALSE)
  file.exists(test_file_path)
}

test_that("Templates can be created.", {
  expect_true(test_template("Jolla"))
  expect_true(test_template("Jolla-Blue"))
  expect_true(test_template("Trestles"))
  expect_true(test_template("Onofre"))
})
