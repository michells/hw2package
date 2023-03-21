#' log.2
#'
#' A version of log() that triggers errors with a negative input
#'
#' @param x a numeric
#'
#' @return log(x, 10) or an error message if input is negative.
#' @export
#'
#' @import rlang
#' @importFrom rlang abort
#' @examples
#' log.2(2)
#' log.2(-2)

log.2 = function(x){
  if (x <= 0){
    rlang::abort(message = "negative input, NA introduced!",
                 value = x)
  } else {
    log(x)
  }
}
