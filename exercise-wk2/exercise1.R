## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# not all of the vectors are numbers, the initials added were a string

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# the package isn't loaded, requires library("stringr")

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial is not an established variable


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector <- 1:10
print(typeof(vector))

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vect1, vect2) {
  difference <- length(vect1) - length(vect2)
  if(difference < 0) {
    difference <- -1 * difference
  }
  statement <- paste("The difference in lengths is", difference)
  return(statement)
}

# Pass two vectors of different length to your `CompareLength` function
set1 <- 9:30
CompareLength(vector, set1)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vect1, vect2) {
  length1 <- length(vect1)
  length2 <- length(vect2)
  if(length1 > length2){
    return(paste("Your first vector is longer by ", length1-length2, "elements"))
  } else if(length2 > length1) {
    return(paste("Your second vector is longer by ", length2-length1, "elements"))
  }else {
    return("They are the same")
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(vector, set1)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vect1, vect2, vect3) {
  final.vect <- c(vect1, vect2, vect3)
  return(final.vect)
}

# Send 3 vectors to your function to test it.
new.vect <- 5:99
CombineVectors(vector, set1, new.vect)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(name) {
  return(gsub("[A-Z]", "", name))
}

names <- c("CSE 143", "Informatics 201", "William", "bowl")
print(CapsTime(names))

