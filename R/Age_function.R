#' An Age function
#'
#' This function allows you to enter a year and extract the name of the oldest player
#' @param year which year do you want the player's name for?
#' @keywords
#' @export
#' @examples
#' Age_function()

Age_function <- function(year){
  filtered_data <- dplyr::filter(Season_Stats_NBA, Year == year)

  #find the oldest player for that year
  filtered_data <- dplyr::group_by(filtered_data, Player)

  filtered_data <- dplyr::summarise(filtered_data, Age = Age)

  filtered_data <- dplyr::arrange(filtered_data, dplyr::desc(Age))

  filtered_data[[1]][1]
}
