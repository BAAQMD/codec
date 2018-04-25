#' @export
recode_using <- function (x, codec, other = "Other") {
  old <- c(names(codec), other)
  new <- c(unname(codec), other)
  othered <- x %>% replace_which(. %not_in% old, other)
  recoded <- factor(othered, levels = old, labels = new)
  as(recoded, class(x))
}
