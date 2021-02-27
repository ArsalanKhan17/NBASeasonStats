#' A Year function
#'
#' This function allows you to enter a year and extract the name of the player with the highest Free throw percentage for that year.
#' @param year which year do you want the player's name for?
#' @keywords
#' @export
#' @examples
#' Year_function()

Year_function <- function(year){
  filtered_data <- dplyr::filter(Season_Stats_NBA, Year == year)

  #find the player with the highest free throw rate
  filtered_data <- dplyr::group_by(filtered_data, Player)

  filtered_data <- dplyr::summarise(filtered_data, FTr_max = max(FTr))

  filtered_data <- dplyr::arrange(filtered_data, dplyr::desc(FTr_max))

  filtered_data[[1]][1]
}
