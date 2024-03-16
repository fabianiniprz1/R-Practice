source("average.R")

test_average <- function(){
  if(average(c(1,2,3)) ==2){
    cat("'average' passed test :)\n")
  } else{
    cat("'average' failed test :(\n")
  }
  
  if(average(c(-1,-2,-3)) ==-2){
    cat("'average' passed test :)\n")
  } else{
    cat("'average' failed test :(\n")
  }
  
  if(average(c(-1,0,1)) ==0){
    cat("'average' passed test :)\n")
  } else{
    cat("'average' failed test :(\n")
  }
}

test_average()
