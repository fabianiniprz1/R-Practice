votes <- read.csv("votes.csv")

votes$total <- votes$poll + votes$mail

votes

ggplot(data = votes,aes(x = candidate, y = total)) +
  geom_col(aes(fill = candidate)) +
  scale_fill_viridis_d("Candidate") +
  scale_y_continuous(limits = c(0,150)) +
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Elections Results"
  ) +
  theme_classic()

