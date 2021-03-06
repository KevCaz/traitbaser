#' Builds a condition
#'
#' Returns a condition clause to be used in queries.
#'
#' @param variable The variable or column name to filter.
#' @param operator An operator for the filter. Currenty (== equals) an (!= not equals) are supported. (More operators to be implemented in the future).
#' @param value Provides a value to compare with.
#'
#' @return Returns the filtering clause. A list of clauses can be composed
#' and passed to \code{query()} or \code{count()} functions via the \code{conditions}
#' parameter to build complex queries.
#' @export
#' @examples
#' \donttest{
#' cnx <- connect('http://www.traitbase.info')
#' off <- resource(cnx, 'species')
#'
#' count(off)
#' count(off, conditions=buildCondition('species', '!=', 'Bombus')  )
#' count(off, conditions=buildCondition('species', '==', 'Bombus')  )
#' query(off, conditions=buildCondition('species', '==', 'Bombus')  )
#' }

buildCondition <- function(variable, operator, value) {
    ope <- match.arg(operator, c("!=", "=="))
    tmp <- ifelse(
      ope == "==",
      urlEncode(value),
      paste0("{\"$not\":{\"$eq\":", urlEncode(value),"}}")
    )
    paste0("\"", variable, "\":", tmp)
}
