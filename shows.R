shows <- read.csv("netflix_titles_nov_2019.csv")

shows$title <- shows$title |>
  str_trim()|>
  str_squish()|>
  str_to_title()

shows$title[str_detect(shows$title, "Avatar")] <- "Avatar: the Airbender"

shows |>
  group_by(title) |>
  summarise(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))
