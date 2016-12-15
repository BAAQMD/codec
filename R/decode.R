#' @describeIn codec Convert integers to strings
#' @export
decode <- function (x, codec, ..., warn = TRUE) {

  s <- names(codec)
  stopifnot(length(s) == length(codec))

  if (isTRUE(warn)) {
    if(!is.numeric(x)) {
      warning("Decoding non-numeric vector")
    }
  }

  i <- match(x, codec, ...)
  res <- s[i]
  return(res)

}
