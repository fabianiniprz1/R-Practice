mario <- as.integer(readline("Enter votes for Mario: "))
peach <- as.integer(readline("Enter votes for Peach: "))
browse <- as.integer(readline("Enter votes for Browse: "))

total <- mario + peach + browse

print(paste("The total is:",total))
