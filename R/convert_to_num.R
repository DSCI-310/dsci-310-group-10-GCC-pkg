#' Converts columns that can be coerced to numeric type in a
#' data frame to numeric type.
#'
#' @param df The dataframe containing columns to be converted
#' @param cols A vector of column names to be converted to numeric type
#'
#' @return A dataframe containing converted numeric columns
#'
#' @export
#'
#' @examples
#' convert_to_num(data.frame(c_to_n = c('1','2')), 'c_to_n')
convert_to_num <- function(df, cols) {
  if (!is.data.frame(df)) {
    stop("`df` should be a data frame or
        data frame extension (e.g. a tibble)")
  }
  if (!is.vector(cols)) {
    stop("`cols` should be a vector or a
        vector extension (e.g. a list)")
  }
  for (col in cols) {
    df[[col]] <- as.numeric(df[[col]])
  }
  return(df)
}
