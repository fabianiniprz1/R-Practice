Budget_2023 <- read.csv("/Users/usermac/Documents/Education/Data Science/R Practice/Budgets/2023-Table 1.csv")

View(Budget_2023)

save(Budget_2023, file = "Budget_2023.RData")

load("Budget_2023.RData")

sort(unique(Budget_2023$Detail))


Budget_2023_SJ <-  Budget_2023 |>
                      select(Period,Detail,Total.Pay) |>
                      filter(Detail  == "Servicios Jamundi")|>
                      arrange(Period)

as_datetime(Budget_2023_SJ$Period * 100 + 1, format = 'YYYYMMDD')

mean_b <- mean(Budget_2023_SJ$Total.Pay)

View(Budget_2023_SJ)

ggplot(data = Budget_2023_SJ, aes(x = Period, y = Total.Pay)) +
  geom_line(
    size = .5,
    color = "deepskyblue4",
    linetype = 1,
    linewidth = .5
  ) +
  geom_point(
    size = 3,
    shape = 21,
    color = "deepskyblue4",
    fill = "deepskyblue2"
  ) +
  geom_hline(
    yintercept = mean_b,
    linetype = 3
  )+
  labs(
    y = "Total Pay",
    title = "Servicios Jamundi 2023"
  ) +
  theme_minimal()

  