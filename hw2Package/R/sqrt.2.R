#' sqrt.2
#'
#' A version of sqrt() that triggers errors with a negative input
#'
#' @param x a numeric
#'
#' @return squareroot of x or an error message if input is negative.
#' @export
#'
#' @import rlang
#' @importFrom rlang abort
#' @examples
#' sqrt.2(2)
#' sqrt.2(-2)
sqrt.2 = function(x){
  if (x <= 0){
    rlang::abort(message = "negative input, NA introduced!",
                 value = x)
  } else {
    sqrt(x)
  }
}
