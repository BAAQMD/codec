#' @title Convert strings to integers and vice versa
#' @name codec
#'
#' @param x integer or character vector
#' @param codec named integer vector, used for encoding or decoding
#' @param \dots further arguments (passed to `match`)
#' @param warn (optional) issue warning if `x` is non-numeric
#'
#' @rdname codec
#'
#' @examples
#' ALPHABET <- setNames(1:26, LETTERS)
#'
#' x <- as.integer(c(6, 15, 15))
#' decode(x, ALPHABET)
#'
#' foo <- c("F", "O", "O")
#' encode(foo, ALPHABET)
#'
NULL
