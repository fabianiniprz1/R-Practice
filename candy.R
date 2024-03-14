# This line reads a comma-separated values (CSV) file named "candy-data.csv"
# and stores the data in a data frame named "candy".
candy <- read.csv("candy-data.csv")

# This line displays the contents of the "candy" data frame in a viewer window.
View(candy)

# This line saves the "candy" data frame to an R data file named "candy.RData".
save(candy, file ="candy.RData")

# This line loads the "candy" data frame from the R data file named "candy.RData".
# This line is typically used after saving the data and you want to work with it again 
# in your R session. You can comment this line out if you don't need to reload the data.
load("candy.RData")

# This line creates a ggplot object using the "candy" data frame.
#  - aes(x = pricepercent, y = sugarpercent) defines the aesthetics for the plot,
#    mapping the "pricepercent" variable to the x-axis and "sugarpercent" to the y-axis.
ggplot(candy, aes(x = pricepercent, y = sugarpercent)) +
  
  # This line adds a geom_jitter layer to the plot.
  #  - color = "darkorchid" sets the color of the points to darkorchid.
  #  - fill = "orchid" sets the fill color of the points to orchid  (notice the slight difference in shade).
  #  - shape = 21 sets the shape of the points to circle (21 is the code for circle in ggplot).
  #  - size = 3 sets the size of the points to 3.
  geom_jitter(color = "darkorchid", fill = "orchid", shape = 21, size = 3) +
  
  # This line adds labels to the x and y axes and a title to the plot.
  #  - labs(x = "Price", y = "Sugar", title = "Price and Sugar") defines the labels.
  labs(x = "Price", y = "Sugar", title = "Price and Sugar") +
  
  # This line sets the theme of the plot to the classic theme.
  theme_classic()
