#' A numeric function
#'
#' This function allows you to enter a year and filter using that year and creates a correlation matrix only numeric variables
#' @param year which year do you want the player's name for?
#' @keywords
#' @export
#' @examples
#' Numeric_Only()

Numeric_Only <- function(year){
  filtered_data <- dplyr::filter(Season_Stats_NBA, Year == year)

  #remove non-numeric variables
  numeric_only <- purrr::keep(filtered_data, is.numeric)

  #draw correlation matrix
  cor(numeric_only)
}
