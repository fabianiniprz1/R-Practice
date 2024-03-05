
chicks <- read.csv("chicks.csv")

View(chicks)

# na.rm = TRUE helps us to ignore the NA values
mean(chicks$weight, na.rm = TRUE)

# I ran this line just to see the different kind of feed
unique(chicks$feed)

# I realized we have 6 kind of food and created a filter for each one
casein    <- chicks$feed[] == "casein"
fava      <- chicks$feed[] == "fava"
linseed   <- chicks$feed[] == "linseed"
meatmeal  <- chicks$feed[] == "meatmeal"
soybean   <- chicks$feed[] == "soybean"
sunflower <- chicks$feed[] == "sunflower"

# if I want to create a subset I can run the line beloved
casein_chicks <- chicks[casein,]
casein_chicks

# also we can use subset to do it
casein_chicks <- subset(chicks, feed == "casein")

# we can use the function is.na to see which rows have na values 
is.na(chicks$weight)

# we can use the function !is.na to see which rows haven't na values 
!is.na(chicks$weight)

# Reload chicks non na values only
chicks <- chicks[!is.na(chicks$weight),]

chicks <- subset(chicks,!is.na(weight))

# we can see the rownames with this function
rownames(chicks)

# when you delete values, the rownames doesn't have those numbers
# we can recreate the rowname asigning NULL as rownames

rownames(chicks) <- NULL
rownames(chicks)


length(chicks$weight)

