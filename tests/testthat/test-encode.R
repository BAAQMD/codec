context("encode")

ALPHABET <- setNames(1:26, LETTERS)

test_that("numeric vector", {
  expect_equal(encode(c("F", "O", "O"), ALPHABET), c(6, 15, 15))
})

test_that("integer vector", {
  expect_equal(encode(c("B", "A", "R"), ALPHABET), c(2L, 1L, 18L))
})

test_that("strings not in codec yield NA", {
  expect_equal(encode("z", ALPHABET), NA_integer_)
})

test_that("non-character x yields warning", {
  expect_warning(encode(123456789, ALPHABET, warn = TRUE))
})
