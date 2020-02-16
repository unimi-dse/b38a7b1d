
#' Fit
#'
#' @param data Creates formula to perform linear regression for two variables
#'
#' @return
#' @export
#'
#' @examples
  fit <- function (data) {lm(Ecommerce_Customersxx$`Yearly Amount Spent` ~ Ecommerce_Customersxx$`Avg. Session Length`)

summary(fit)
}
