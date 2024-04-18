f <- function() {
  v <- runif(10)
  lapply(v, function(x) {
           x + 1
  })
}
