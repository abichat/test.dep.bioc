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
