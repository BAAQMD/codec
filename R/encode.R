#' @describeIn codec Convert strings to integers
#' @export
encode <- function (x, codec, ..., warn = TRUE) {

  s <- names(codec)
  stopifnot(length(s) == length(codec))

  if (isTRUE(warn)) {
    if(!is.character(x)) {
      warning("Encoding non-character vector")
    }
  }

  i <- match(x, s, ...)
  res <- codec[i]
  return(unname(res))

}
