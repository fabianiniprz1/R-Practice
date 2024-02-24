votes <- read.csv("votes.csv")

sum(votes$poll)

votes$total <- votes$poll + votes$mail

write.csv(votes,"total.csv",row.names = FALSE)


URL <- "https://raw.githubusercontent.com/fivethirtyeight/data/master/non-voters/nonvoters_data.csv"


voters <- read.csv(URL)

View(voters)
