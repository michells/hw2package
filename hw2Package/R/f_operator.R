#' f_operator
#'
#' function operator that transform *sqrt.2()* and *log.2()* into functions such that:
#' 1. If input is greater than 0, then return normal output.
#' 2. If input is invalid, return an error condition object, with "invalid_input" subclass and invalid value attached.
#'
#' @param f hw2Package::sqrt.2(x) or hw2Package::log.2(x)
#'
#' @return the output of parameter f, or error condition object if input for f is negative
#' @export
#'
#' @import rlang
#' @examples
#' log.3 = f_operator(log.2)
#' sqrt.3 = f_operator(sqrt.2)
#' x = lapply(runif(2,-10,10), log.3)
#' y = lapply(runif(2,-10,10), sqrt.3)
f_operator = function(f) {
  force(f)
  function(...) {
    if (c(...) > 0) {
      result <- f(...)
      result
    } else if (c(...) <= 0 ) {
      get_f <- catch_cnd(f(...))
      catch_cnd(abort(message = as.character(get_f$value),
                      .subclass = "invalid_input",
                      invalid_input = get_f$value))
    }
  }
}
