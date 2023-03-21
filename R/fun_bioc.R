#' Test function
#'
#' @return A data.frame
#' @export
#'
#' @importFrom limma camera
#' @importFrom stats rnorm
#'
#' @examples
#' fun_bioc()
fun_bioc <- function() {
  y <- matrix(rnorm(1000 * 6), 1000, 6)
  design <- cbind(Intercept = 1, Group = c(0, 0, 0, 1, 1, 1))

  index1 <- 1:20
  y[index1, 4:6] <- y[index1, 4:6] + 1

  camera(y, index1, design)
}


#' Test function
#'
#' @param x Numeric
#'
#' @return A numeric
#' @export
#'
#' @importFrom Biobase listLen
#' @importFrom affy hlog
#'
#' @examples
#' fun_bioc_rec(1)
fun_bioc_rec <- function(x) {
  hlog(x)
  foo <- lapply(1:8, rnorm)
  listLen(foo)
}
