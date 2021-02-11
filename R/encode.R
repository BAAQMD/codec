#' Convert long strings to short codes
#'
#' @describeIn codec Convert long strings to short codes
#' @export
encode <- function (x, codec, ..., warn = FALSE) {
  UseMethod("encode")
}

#' @export
encode.default <- function (x, codec, ..., warn = FALSE) {

  if (isTRUE(warn)) {
    if(!is.character(x)) {
      warning("Encoding non-character vector")
    }
  }

  codes <- names(codec)
  stopifnot(length(codes) == length(codec))

  i <- match(x, codes, ...)
  encoded <- unname(codec[i])

  return(encoded)

}
