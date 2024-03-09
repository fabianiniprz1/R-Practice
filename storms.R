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

storms |>
  select(!c(lat,long,pressure,ends_with("diameter"))) |>
  filter(status == "hurricane") |>
  arrange(desc(wind),name,desc(hour))

         