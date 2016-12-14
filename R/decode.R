#' @describeIn codec Convert integers to strings
#' @export
decode <- function (x, codec, ..., warn = TRUE) {

  if (isTRUE(warn)) {
    if(!is.numeric(x)) {
      warning("Decoding non-numeric vector")
    }
  }

  s <- names(codec)
  i <- match(x, codec, ...)
  res <- s[i]
  return(res)

}
