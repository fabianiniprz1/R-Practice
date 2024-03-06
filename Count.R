get_votes <- function(promt = "Enter votes: ") {
                repeat{
                  votes <- suppressWarnings(as.integer(readline(promt)))
                  if(!is.na(votes)){
                    return(votes)
                  }
                }
              }

total <- 0

for (i in c("Mario","Peach","Bowser")){
  votes <- get_votes(paste0(i, ": "))
  total <- total + votes
}

print(paste("The total is:",total))
