
# Have in mind you always need a C to declare the values
temps_data <- data.frame(temperature = c(15,-15,-18,20,33,43,65,38,26,31,35,14,24,14,14,31,35,16,19,27,38,26,31,35,14,24,14,14,31,35,16))

temps_data

save(temps_data, file = "temps.RData")

load(file = "temps.RData")

mean(temps_data$temperature)


sort(temps_data) 

temps_data$temperature[- c(2,3,7)]

temps_data$temperature[1] > 0

vector_i <- temps_data$temperature[] > 0

temps_data$temperature[vector_i]


which(temps_data$temperature[] < 0)

any(temps_data$temperature[] < 0 | temps_data$temperature[] > 60)
all(temps_data$temperature[] < 0 | temps_data$temperature[] > 60)

temps_data$temperature[] < 0 | temps_data$temperature[] > 60


outliers_filter <- temps_data$temperature[] < 0 | temps_data$temperature[] > 60

temps_data$temperature[outliers_filter]

non_outliers_filter <- !(temps_data$temperature[] < 0 | temps_data$temperature[] > 60)

temps_data$temperature[non_outliers_filter]

sort(unique(temps_data$temperature[non_outliers_filter]))
