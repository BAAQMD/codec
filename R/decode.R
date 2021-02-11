#' Convert short codes to longer strings
#'
#' @describeIn codec Convert short codes to longer strings
#' @export
decode <- function (x, codec, ...) {
  UseMethod("decode")
}

#' @export
decode.default <- function (x, codec, ...) {

  strings <- names(codec)
  stopifnot(length(strings) == length(codec))

  i <- match(x, codec, ...)
  decoded <- strings[i]

  return(decoded)

}
