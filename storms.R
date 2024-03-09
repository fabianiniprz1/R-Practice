install.packages("dplyr")
install.packages("tidyverse")
library(tidyverse)

dplyr::select(
  storms, 
  !c(lat,long,pressure,tropicalstorm_force_diameter,hurricane_force_diameter)
  )

dplyr::select(
  storms, 
  !c(lat,long,pressure,ends_with("diameter"))
)

dplyr::filter(
  dplyr::select(
    storms, 
    !c(lat,long,pressure,ends_with("diameter"))
  ),
  status == "hurricane"
)

filter(
  select(
    storms, 
    !c(lat,long,pressure,ends_with("diameter"))
  ),
  status == "hurricane"
)

# We could write our code with |> to do it more readable

hurricane <- storms |>
  select(!c(lat,long,pressure,ends_with("diameter"))) |>
  filter(status == "hurricane") |>
  arrange(desc(wind),name,desc(hour)) |>
  distinct(name,year, .keep_all = TRUE)

hurricane |>
  select(c(year,name,wind)) |>
  write.csv("hurricanes.csv", row.names = FALSE)

hurricanes <- read.csv("hurricanes.csv")
View(hurricanes)       

hurricanes|>
  group_by(year)|>
  slice_max(order_by = wind) |>
  filter(between(year,1980,1990))

ten_years_hurracanes <- function(b,e){
  
top_10 <- hurricanes|>
  group_by(year)|>
  summarise(hurracanes = n())|>
  arrange(desc(hurracanes))|>
  filter(between(year,b,e))

return(top_10)
}
