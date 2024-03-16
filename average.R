average <- function(x){
  
  if(any(is.na(x))){
    warning("'x' contains one or more NA values, Returning NA instead")
    return(NA)
  }
  
  if(!is.numeric(x)){
    ## message("'x' must be a numeric vector, Returning NA instead")
    ## warning("'x' must be a numeric vector, Returning NA instead")
    stop("'x' must be a numeric vector.")
    ## return(NA)
  }
  sum(x)/length(x)
}
