library(ducksay)

name <- readline("what's your name? \n")
greeting <- ducksay(paste("hello",name))
cat(greeting)