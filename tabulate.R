votes <- read.csv("votes.csv")

sum(votes$poll)

votes$total <- votes$poll + votes$mail

write.csv(votes,"total.csv",row.names = FALSE)
