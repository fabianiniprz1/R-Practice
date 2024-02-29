
# Have in mind you always need a C to declare the values
temps_data <- data.frame(temperature = c(15,-15,-18,20,33,43,65,38,26,31,35,14,24,14,14,31,35,16,19,27,38,26,31,35,14,24,14,14,31,35,16))

# Once you have the environment uploaded, you can work with the objects
mean(temps_data$temperature)

# You can print the values and exclude some of then with - c(n1,n2,...nx)
temps_data$temperature[- c(2,3,7)]

# It evaluate a value and returns TRUE or FALSE
temps_data$temperature[1] > 0

# It returns an array with TRUE when the condition is true, and false when it's not
vector_i <- temps_data$temperature[] > 0

# You can use the previous variable to filter the data frame
temps_data$temperature[vector_i]

# Here we can get the position of the values less than 0
which(temps_data$temperature[] < 0)

# We can use these conditionals & | any and all
any(temps_data$temperature[] < 0 | temps_data$temperature[] > 60)
all(temps_data$temperature[] < 0 | temps_data$temperature[] > 60)

# this variable save an array with the position of the outliers
outliers_filter <- temps_data$temperature[] < 0 | temps_data$temperature[] > 60

# Here we can filter the data frame with the previous variable
outliers <- temps_data$temperature[(outliers_filter)]
non_outliers <- temps_data$temperature[!(outliers_filter)]

outliers
non_outliers

# This is only to show how sort and unique works
sort(unique(non_outliers))

# With save we can save a file .RData to save the objects
save(outliers,non_outliers,temps_data,file = "environment_1.RData")

# if you want to upload the environment, you just need to run this code
load(file = "environment_1.RData")
