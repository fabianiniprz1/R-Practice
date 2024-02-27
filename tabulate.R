votes <- read.csv("votes.csv")

sum(votes$poll)

votes$total <- votes$poll + votes$mail

write.csv(votes,"total.csv",row.names = FALSE)


# Assign the URL of the CSV file to a variable
URL <- "https://raw.githubusercontent.com/fivethirtyeight/data/master/non-voters/nonvoters_data.csv"

# Read the CSV data into a data frame called "voters"
voters <- read.csv(URL)

# View the data frame in a separate tab (optional, for visual inspection)
View(voters)

# Get the number of rows (observations) in the data frame
nrow(voters)

# Get the number of columns (variables) in the data frame
ncol(voters)

# Get the unique values in the "voter_category" column
unique(voters$voter_category)

# Get the unique values in the "Q22" column, including NAs (missing values)
unique(voters$Q22)

# Get the unique values in the "Q21" column
unique(voters$Q21)

# Convert "Q21" into a factor with specified labels, excluding -1 values
factor(
  voters$Q21,
  labels = c("Yes", "No", "Unsure/Undecided"),
  exclude = c(-1)
)
