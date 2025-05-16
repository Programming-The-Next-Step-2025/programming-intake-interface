#' Add Two Numbers
#'
#' This function returns the sum of two numbers.
#'
#' @param a First number
#' @param b Second number
#' @return The sum of \code{a} and \code{b}.
#' @examples
#' add_a_and_b(2, 3)
#' add_a_and_b(10, -5)
#' @export
add_a_and_b <- function(a, b) {
  a + b
}


#' Generate random numbers
#'
#' @param n Number of random values to generate
#'
#' @return A numeric vector of random values
#'
#' @examples
#' generate_noise(5)
#'
#' @export
#' @importFrom stats rnorm
generate_noise <- function(n) {
  rnorm(n)
}





