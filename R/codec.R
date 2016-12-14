#' @title Convert strings to integers and vice versa
#' @name codec
#'
#' @param x integer or character
#' @param codec named integer vector
#' @param \dots further arguments to \code{\link[base]{match}}
#' @param warn (optional) issue warning if \code{x} is non-numeric
#'
#' @rdname codec
#'
#' @examples
#' ALPHABET <- setNames(1:26, LETTERS)
#'
#' x <- c(6, 15, 15)
#' decode(x, ALPHABET)
#'
#' foo <- c("F", "O", "O")
#' encode(foo, ALPHABET)
#'
NULL
