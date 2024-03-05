# Create a subset for each kind of feed, and add one column with the 
casein    <- subset(chicks,feed == "casein")
casein$file_number <- 1

fava      <- subset(chicks,feed == "fava")
fava$file_number <- 2

linseed   <- subset(chicks,feed == "linseed")
linseed$file_number <- 3

meatmeal  <- subset(chicks,feed == "meatmeal")
meatmeal$file_number <- 4

soybean   <- subset(chicks,feed == "soybean")
soybean$file_number <- 5

sunflower <- subset(chicks,feed == "sunflower")
sunflower$file_number <- 6

# rbind works to append different files
big_file <- rbind(casein,fava,linseed,meatmeal,soybean,sunflower)

# I added another column to label each row
big_file$label <- ifelse(big_file$weight > mean(big_file$weight),"Over Average","Under Average")

# Show the data frame
View(big_file)
