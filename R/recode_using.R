#' recode_using
#'
#' @note Similar in purpose to `fct_recode`?
#'
#' @param x vector
#' @param codec named integer vector
#' @param other what to use for missing levels
#'
#' @export
recode_using <- function (x, codec, other = "Other") {
  old <- c(names(codec), other)
  new <- c(unname(codec), other)
  othered <- replace(x, !(x %in% old), other)
  recoded <- factor(othered, levels = old, labels = new)
  as(recoded, class(x))
}
