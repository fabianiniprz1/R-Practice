# 1. Load the data from a CSV file
votes <- read.csv("votes.csv")  # Read the data from a file named "votes.csv" and store it in a variable called "votes"

# 2. Calculate the total votes for each candidate
votes$total <- votes$poll + votes$mail  # Create a new column named "total" by adding the values in "poll" and "mail" columns

# 3. Display the modified dataset (optional)
votes  # This line simply prints the contents of the "votes" data frame to the console for viewing

# 4. Create the bar chart using ggplot2
p <- ggplot(data = votes, aes(x = candidate, y = total)) +  # Create a ggplot object, assigning data and aesthetics
  geom_col(
    aes(fill = candidate),  # Map candidate names to bar colors
    show.legend = FALSE) +  # Suppress the legend since fill matches the x-axis
  scale_fill_viridis_d("Candidate") +  # Apply a viridis color palette for visual appeal
  scale_y_continuous(limits = c(0, 150)) +  # Set a specific range for the y-axis
  labs(
    x = "Candidate",  # Label the x-axis as "Candidate"
    y = "Votes",  # Label the y-axis as "Votes"
    title = "Elections Results"  # Set the title of the plot
  ) +
  theme_classic()  # Apply a classic theme for a simple visual style

# 5. Save the plot as a PNG image
ggsave(
  "votes.png",  # File name for the plot
  plot = p,  # The ggplot object to be saved
  width = 1200,  # Width of the saved image in pixels
  height = 900,  # Height of the saved image in pixels
  units = "px"  # Units for width and height
)
