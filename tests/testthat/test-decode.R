context("decode")

ALPHABET <- setNames(1:26, LETTERS)

test_that("numeric vector", {
  expect_equal(
    decode(
      c(6, 15, 15),
      ALPHABET),
    c("F", "O", "O"))
})

test_that("integer vector", {
  expect_equal(
    decode(
      c(2L, 1L, 18L),
      c("A" = 1L, "B" = 2L, "R" = 18L)),
    c("B", "A", "R"))
})

test_that("integers not in codec yield NA", {
  expect_equal(
    decode(30, ALPHABET),
    NA_character_)
})
