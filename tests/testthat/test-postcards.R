test_template <- function(template){
  skip_on_cran()

  temp_file <- tempfile()

  test_file_path <- postcards::create_postcard(temp_file, template, edit = FALSE, create_image = FALSE)
  file.exists(test_file_path)
}

test_that("Templates can be created.", {
  expect_true(test_template("jolla"))
  expect_true(test_template("jolla-blue"))
  expect_true(test_template("trestles"))
  expect_true(test_template("onofre"))
  expect_true(test_template("solana"))
})
