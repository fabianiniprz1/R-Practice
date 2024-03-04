# Read and clean the data
chicks <- read.csv("chicks.csv")
chicks <- subset(chicks,!is.na(weight))

# Determine feed options
feed_options <- unique(chicks$feed)

# Format options
num_options <- length(feed_options)
formated_options <- paste0(1:num_options,'. ',feed_options)

# prompt user with options

# cat(formated_options,sep = "\n")
# feed_choice <- as.integer(readline("Feed type: "))

# menu option

feed_choice <- menu(
  feed_options,
  title = "Feed type"
)

# Print the selected action
if(feed_choice < 1 || feed_choice > num_options){
  cat("Invalid choice")
} else {
  selected_feed <- feed_options[feed_choice]
  print(subset(chicks,feed == selected_feed))  
}



