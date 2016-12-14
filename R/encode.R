#' @describeIn codec Convert strings to integers
#' @export
encode <- function (x, codec, ..., warn = TRUE) {

  if (isTRUE(warn)) {
    if(!is.character(x)) {
      warning("Encoding non-character vector")
    }
  }

  s <- names(codec)
  i <- match(x, s, ...)
  res <- codec[i]
  return(unname(res))

}
