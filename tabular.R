votes <- read.csv("votes.csv")

# I renamed the row names with the name of each candidate
rownames(votes) <- c(votes$candidate)

# I took only the total votes from the file
votes <- votes[2:3]

# we could have the total of votes for each candidate with this code
total_votes_by_candidate <- c()

for (candidate in rownames(votes)){
  total_votes_by_candidate[candidate] <- sum(votes[candidate,])
}


# we could have the total of votes for each method with this code
total_votes_by_method <- c()

for (method in colnames(votes)){
  total_votes_by_method[method] <- sum(votes[,method])
}


# We could have the same result, running the function beloved
apply(votes, MARGIN = 1, FUN = sum)

apply(votes, MARGIN = 2, FUN = sum)
