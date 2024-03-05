get_votes <- function(promt = "Enter votes: ") {
  votes <- suppressWarnings(as.integer(readline(promt)))
  ifelse(is.na(votes),0,votes)
}

mario <- get_votes()
peach <- get_votes()
browse <- get_votes()

total <- mario + peach + browse

print(paste("The total is:",total))
